Return-Path: <clang-built-linux+bncBAABBKGGQT6AKGQESCPL5VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C512289DB3
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 04:57:46 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id m23sf6929081ioj.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 19:57:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602298665; cv=pass;
        d=google.com; s=arc-20160816;
        b=V6MgbxWaip4M0ZlEoXsMzoYzEckw8IVjoeN6HguW0KJKa5jnhGSlSgVnjKcm/7T/8r
         SjithRI8eYxMnOZqIufRZTO1CRLgYQu+xu4O/yv/NMalyhBpMBHVDphx0KmF6QaflcVR
         NAL1s/zs7+kxPYevMmICn7bOliBbJ/glT88vyrJeM0EtPxILBbQuwwclQNfvQ/sScDWZ
         HkHHGhoh1ZsVFRdWjKwzy0ghzaRIY6yjdP6WzsbfgLv2cjEZ3NwbmEbnNbRqPywtwlFS
         golR+TmL59iY9d3KduclX6+xrSUKWcAW09Z2L/zmyPYmi238pbP2rrSrjzA9k9lo43qZ
         Mnng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wKr3PuIuCqW7ozC7aOZb79Y5b8LJGLEfYx0Nyoo44hs=;
        b=oYPMucWD/+n1MAl0Q/qof9OktyTNJyDxIwdqtQT3yWugrq8Dsd+WzMnvRcnsdJyZIH
         XltG9JI0GPpgLZS5Qckvbjd5LJNHmsTxZkdjI2oL4lf+/eC9cuJ38x8WSFQ00fKoe2UD
         2EqiLhsdIJyWoi648QdCNVYT8fJyooK87w1+fw4+QJ1+U8hSqTyMIYPeGcTmSMbAb1FD
         IjouWqMH70T8m/DviReiolHFFW5Evhb05+rERZNgyHg/cRx5P6nJJhJy+piFrCheJBgP
         UVqVZCtAhkecnfu6zhAAtqwPtyt+fY8A5Oz1yhd3EJ9q2bthDZMBaG2ICPNiLIpCI+Tj
         8cig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="T9/9xBB/";
       spf=pass (google.com: domain of srs0=blqi=dr=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=bLqi=DR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wKr3PuIuCqW7ozC7aOZb79Y5b8LJGLEfYx0Nyoo44hs=;
        b=ELz5LW5EQadmq7w5Ccw/jglrfvUyxLaPtfjxLaeF5cy4mDH+612lFK/OXJhOz2Db+8
         JVmpFMKxEc1GRz5F8pYho3Di7Gc2F3Ef1IpO+sxGPm+l9sqy5dmmp7OYjscUjJqfd7o5
         I9QwR3z+RcA7/b+piNBYkVvLJ5DLp6JYSzvLVXXVsbJfVPEYZP4yhGu2rvNhiMQfUCLa
         Mc1LLIsb7FIn0Skn2JtKC90B1Z4moqbMjjl+WkDpzjI3iOBRkkx4rZat6Kh+ewJ4xgTz
         yNds67Jg2KpWF2Zhxv1DxMkuS4gwzJZsW6ZcmuT5L9RaH7ZKnmcJXZ4U0F3ISYXpgrVY
         Y4kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKr3PuIuCqW7ozC7aOZb79Y5b8LJGLEfYx0Nyoo44hs=;
        b=GVkMUxj+alAifBZIJWjXUcfvfiy0bUyB0WWZEjZcm+YBEAZ3iNhrEpO/MsHT8MPul8
         ISzC1BqMEOWo53WzF7AU8pjq04zrOjLeJHox0J2XCO5vyd0Wy4GxflyWkgbxtO2Q7lPU
         TM0XYQ/9PQfbD4krb59Yf+wOt7Nmox9sIl5sWc38diU+ET3597EEcPrZYA5QbnCYGdd/
         82MPl0Opxj3pcvvQN34Vt9KOisEr8tPWVqWwFQ5qb9/Z+YUzZ8T757+wn1RVkvs6c2cx
         ph8ib7FzLlFod1cq6ldMfAhnQ5HTnorrEhzna3305VvOgDgDyUzzmUlzouva5uPGrOyH
         mTiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HB01BgGdv1oxUpNvHUKzGSN+WVBWUV6OfQjC9BXUohsuLdRVM
	mLNlPSwhTkIbZL+eG9+KhzE=
X-Google-Smtp-Source: ABdhPJzEGdqkY0OK08axlYHhQD0UgaPPbwnPLuCKBVROGODJea0789QZcrRzWSpN+s/WYpk6IendXA==
X-Received: by 2002:a5d:9e0c:: with SMTP id h12mr11198867ioh.163.1602298665071;
        Fri, 09 Oct 2020 19:57:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5b47:: with SMTP id p68ls2597838ilb.5.gmail; Fri, 09 Oct
 2020 19:57:44 -0700 (PDT)
X-Received: by 2002:a92:ca83:: with SMTP id t3mr13094837ilo.197.1602298664751;
        Fri, 09 Oct 2020 19:57:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602298664; cv=none;
        d=google.com; s=arc-20160816;
        b=DCwvOlT3Qy/Lo3FKbrSOOHPYgtKEXTnwVlg7bs7eBiCPGvXa56JZOGvlHTbNCkO2ai
         HOsWy6TGdT1RDfaLVTMLbuWagabKKTaKL/dDRiL8pJReo82oDXNWV4809nSP9Nmkj6Bm
         HoUTgOBH/NdrmNknV4n58xCEuc7+jX/vEj/WJRvpW6YSQfZxAfcWlBUq3svxX1MHKJ52
         sjSKbJWwJnCLAmsNi+QvZSfmUO09IrIAl+sGwMG0YbBxswlilkRFKyqQCWXzmG2woGnE
         BWtZBMFR3ynjARhugnEehMFH5oDLz9Ep6SvsEEdp6eedxUfyU3QRpDESNtYy222U3oAp
         6BVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t5dPqz3PNVQ738PdeL6uq+wJ9t8jjEpuaEMU2Z1XWBs=;
        b=lTXTyelFm8W0WeI35cI2jos5ainBV859lC//Z/h4RgGy6b3sr4PuD+ydhzNQ92Tbko
         3dBBWw5UQZAY2Fo6lL3D593W7zhqMN5HzVx/Vkxd4EEZ01sCjI4K/qiNVc6vJ00m4iNX
         rLjNuZaCNR/VU6xrv2eiBWxtjwf0zVWkmeUPDtrVpcoLGQNYdBmB5w6fBJlmt4GUxONs
         bE1jFkmKDI7lOSajfkB3rg7pi2jtu81ENi5xixF2NK3UxnReCjWqGtZoujYsk4g/Cdm+
         bSYBxZNkXr3wTXiTgDUCdgpLOv1+oHzifRvCw9QDm172hEwfM5Jm4KKCozqjl1S/xQG0
         PPJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="T9/9xBB/";
       spf=pass (google.com: domain of srs0=blqi=dr=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=bLqi=DR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z85si653853ilk.1.2020.10.09.19.57.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 19:57:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=blqi=dr=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-104-11.bvtn.or.frontiernet.net [50.39.104.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1341E2076B;
	Sat, 10 Oct 2020 02:57:44 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id D38AE3522837; Fri,  9 Oct 2020 19:57:43 -0700 (PDT)
Date: Fri, 9 Oct 2020 19:57:43 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: dave@stgolabs.net, josh@joshtriplett.org, rostedt@goodmis.org,
	mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com,
	joel@joelfernandes.org, natechancellor@gmail.com,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rcutorture: remove unneeded check
Message-ID: <20201010025743.GN29330@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20201009194736.2364-1-trix@redhat.com>
 <20201009201825.GL29330@paulmck-ThinkPad-P72>
 <03e3eeed-6072-ccb8-a9c6-c79a99c701b8@redhat.com>
 <20201009235033.GM29330@paulmck-ThinkPad-P72>
 <92f82632-adbd-ca85-d516-6540a49f01ab@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <92f82632-adbd-ca85-d516-6540a49f01ab@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="T9/9xBB/";       spf=pass
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

On Fri, Oct 09, 2020 at 05:24:37PM -0700, Tom Rix wrote:
>=20
> On 10/9/20 4:50 PM, Paul E. McKenney wrote:
> > On Fri, Oct 09, 2020 at 02:18:41PM -0700, Tom Rix wrote:
> >> On 10/9/20 1:18 PM, Paul E. McKenney wrote:
> >>> On Fri, Oct 09, 2020 at 12:47:36PM -0700, trix@redhat.com wrote:
> >>>> From: Tom Rix <trix@redhat.com>
> >>>>
> >>>> clang static analysis reports this problem:
> >>>>
> >>>> rcutorture.c:1999:2: warning: Called function pointer
> >>>>   is null (null dereference)
> >>>>         cur_ops->sync(); /* Later readers see above write. */
> >>>>         ^~~~~~~~~~~~~~~
> >>>>
> >>>> This is a false positive triggered by an earlier, later ignored
> >>>> NULL check of sync() op.  By inspection of the rcu_torture_ops,
> >>>> the sync() op is never uninitialized.  So this earlier check is
> >>>> not needed.
> >>> You lost me on this one.  This check is at the very beginning of
> >>> rcu_torture_fwd_prog_nr().  Or are you saying that clang is seeing an
> >>> earlier check in one of rcu_torture_fwd_prog_nr()'s callers?  If so,
> >>> where exactly is this check?
> >>>
> >>> In any case, the check is needed because all three functions are invo=
ked
> >>> if there is a self-propagating RCU callback that ensures that there i=
s
> >>> always an RCU grace period outstanding.
> >>>
> >>> Ah.  Is clang doing local analysis and assuming that because there wa=
s
> >>> a NULL check earlier, then the pointer might be NULL later?  That doe=
s
> >>> not seem to me to be a sound check.
> >>>
> >>> So please let me know exactly what is causing clang to emit this
> >>> diagnostic.  It might or might not be worth fixing this, but either w=
ay
> >>> I need to understand the situation so as to be able to understand the
> >>> set of feasible fixes.
> >>>
> >>> 						Thanx, Paul
> >> In rcu_prog_nr() there is check for for sync.
> >>
> >> if ( ... cur_op->sync ...
> >>
> >> =C2=A0=C2=A0 do something
> >>
> >> This flags in clang's static analyzer as 'could be null'
> >>
> >> later in the function, in a reachable block it is used
> >>
> >> cur_ops->sync()
> >>
> >> I agree this is not a good check that's why i said is was a false posi=
tive.
> >>
> >> However when looking closer at how cur_ops is set, it is never uniniti=
alized.
> >>
> >> So the check is not needed.
> > OK, got it, and thank you for the explanation.
> >
> >> This is not a fix, the code works fine.=C2=A0 It is a small optimizati=
on.
> > Well, there really is a bug.  Yes, right now all ->sync pointers are
> > non-NULL, but they have not been in the past and might not be in the
> > future.  So if ->sync is NULL, rcu_torture_fwd_prog_nr() either should
> > not be called or it should return immediately without doing anything.
> >
> > My current thought is something like the (untested) patch below, of
> > course with your Reported-by.
> >
> > Thoughts?
>=20
> Yes that would be fine.
>=20
> In in review these other cases need to be been take care of.

I am having a difficult time interpreting this sentence, but will
optimistically assume that it means that you are good with this approach.
If my optimism is unwarranted, please let me know so I can fix whatever
might be broken.

> Reported-by: Tom Rix <trix@redhat.com>

How does the commit below look?

							Thanx, Paul

------------------------------------------------------------------------

commit 75c79a5dd72c1bb59f6bd6c5ec36f3a6516795cd
Author: Paul E. McKenney <paulmck@kernel.org>
Date:   Fri Oct 9 19:51:55 2020 -0700

    rcutorture: Don't do need_resched() testing if ->sync is NULL
   =20
    If cur_ops->sync is NULL, rcu_torture_fwd_prog_nr() will nevertheless
    attempt to call through it.  This commit therefore flags cases where
    neither need_resched() nor call_rcu() forward-progress testing
    can be performed due to NULL function pointers, and also causes
    rcu_torture_fwd_prog_nr() to take an early exit if cur_ops->sync()
    is NULL.
   =20
    Reported-by: Tom Rix <trix@redhat.com>
    Signed-off-by: Paul E. McKenney <paulmck@kernel.org>

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
clang-built-linux/20201010025743.GN29330%40paulmck-ThinkPad-P72.
