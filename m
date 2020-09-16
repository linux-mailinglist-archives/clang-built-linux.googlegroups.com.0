Return-Path: <clang-built-linux+bncBAABBHELRL5QKGQEQFJ4KRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id F343126CE34
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 23:37:33 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id o184sf28337pfb.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 14:37:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600292252; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvsRENzOWzPpMrRo3MEmtgnkNrOxzdS4bhDRjDavWZ0N8mJTaleknlWSI61XzKsUok
         SH+vt3RXqcoIWsq8T3FWEtZT2uXmAMVIvOsIXnPFwoKlU3ArtGqoIg6yuMcLSMnAlxhF
         T5rCrG5MqKK+r9G80quCjZUWj1Unw92uB2iD8L/+KrIMXfcWMN84BhLzKrw5GFi+y9an
         DslzIPHHcm9dvo7WtSp9ML6jtKipqSXdvuNrjrrc91IU7ZvYxg6EB9GlGwMwUT6xDpdC
         VHaYWeo1Y4AxiKC+whl7+ys6AsxnMOtFUyzezlxJh1VuBGsm67BqhRgSnon+Ifs2jofR
         XRLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=vVxH4VZ/gV/vG0izWdQ2bfT/kYqG6+I/pqt82dGHATI=;
        b=BUhB6waeP6tTaxVAJvm4OUQ8dwmPkzPvNNfYyklhIBm+v8rftc1epAvPGM/i7NuQIT
         Pe6IUvaJh8BA3NUN/oHCicCu9Bb9M9UJBubVwOT8XMo27tkVeqxiYMcbYqvOqpQx1/ZC
         1vujSX/vmm4Nc15nHc6BPskAAzeZ+3NqJIXNDwyQ9qSDsmQQbPgnSNrZoZPGq1WMPP6h
         Za7tyAwM0HL9XqGY0b7INv2OrgkWp6nikCe/jnlBuWExzNhyzmA/VJKtRCZt5+/iDxhC
         9WF2QGCrhlRaOFb/vuvNz61omdPVW+dplhE5pnYB3mlz5cbLAEwaTPj5E6YeB7tYfdwv
         yLvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Uf3eGMP3;
       spf=pass (google.com: domain of srs0=ewpo=cz=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=ewPO=CZ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vVxH4VZ/gV/vG0izWdQ2bfT/kYqG6+I/pqt82dGHATI=;
        b=PjyLA1epiGdhidYBzLsNJH3a1lvxQifsvulVvswOiruakM97shx5rXuIrj6EBMtpkB
         ZiN1pORaYOIbwwA+Z6B2MRMxcj+bXb596mz2eDWg0/yRzpeK2MUolBsVId23QDO/oQG+
         HdBPpQljeUEyNM36GLAD59uETz4I9WPbuys1Ct8dpxH7IOI20XjTiM42JiHzU4BqU+fA
         1Z3u9bRwiDKKt5l0LitRy2Aqob7RjqXMGVIHOiIMGTg0mjLO78DK/nR1Mi57fZtRHsdu
         qHzZrq9ttOqN40SXnYGIiAOJy++wcMK37oKFMxXK1ws9d4U08TVMGvlBs9waJ0SDorgI
         9CGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vVxH4VZ/gV/vG0izWdQ2bfT/kYqG6+I/pqt82dGHATI=;
        b=EKlfCbNGWop08HRMUBh9wfxREvCihOsRh032XCMkHCbKe2FKTU7GElRJERNoIq25Y9
         aviMlgCPoIRL399Mqh7nE6DWour0p0L5Wr4L6KrYh1KdPWMS3pc5p0Wxlqb2NCMTK5IO
         BlHL/H1Mbtzx4FF3KDCTez0FjzxJWZx0ddLMQlezu3f2VOKkkEv3CBpUHkdgGQBcgfxQ
         JAknf9apOPNq7EDMeauzYYnXg7ZiF9NDlCjNg7kgRfKZ15lKjyKCA/87SaaMIhCVOPKu
         ebXFj47KL1/xC6l5qquBAEkWXnol+ESlOMatGQA6q/oSzTuvNV8SuOZcyVzk/t6kHm0J
         7Hew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FEL79zGXbBHTlHNoOhOlq0Ggv9iSzieW+y/3VY9gvSBvB7+oA
	NNR1rtVSGRAvEm4udX0MdBA=
X-Google-Smtp-Source: ABdhPJxoPWrnDta2XYNvh0sqM+OGn0+FbmQOiAC4lBGzda2FZAEMRHo3D0F/YTR8ucpC3AGZlb4KWA==
X-Received: by 2002:aa7:908b:0:b029:142:2501:34ee with SMTP id i11-20020aa7908b0000b0290142250134eemr8149816pfa.71.1600292252385;
        Wed, 16 Sep 2020 14:37:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:620d:: with SMTP id d13ls40073pgv.0.gmail; Wed, 16 Sep
 2020 14:37:31 -0700 (PDT)
X-Received: by 2002:a63:4a0e:: with SMTP id x14mr20614631pga.222.1600292251852;
        Wed, 16 Sep 2020 14:37:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600292251; cv=none;
        d=google.com; s=arc-20160816;
        b=WAtaIWhFc6eTh3GkPIIkyo/aJSsQbmmFd688GI2Iti8nuB9LfBMtU2jYof0gifOf4G
         LKc/rLDY0RvNC7pzOwUSZLnHfEDstCHZc6o1/9LwOJCiMZwP5Ey9MJkozmddqsgxpqhh
         ECVk50wYQU9fx7sTvcpAV/gbRO++fRjIrXvjrYPtDei3wf0zlJ7211PPQcQDjt8k0zla
         xgIMMcm1XqjTG6q0mU8QT3UwnkRiBtqC871rY4kJU5ZKygxCsVS/x3vQsuzYypSHDdGA
         +/6L2QXNGA7ROje6TsqzuTOM/1pKc6gJ3FYW6xwzKTr9ptgHt4MmamoGn5ifXYyOElel
         nLBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=DbjIzbE87mEWBbCIpeNgSTbh6ACwYh3wrihvUa4ksSg=;
        b=DoECWubLrEMeuMn+2soNNY5RqON1hRg0sKsfJqA8FrLV80rD++KVCRKzUXr3jWUTua
         SWB6TzbkGrhilydX9iIOQbCF0F/pSjBC1dijpsVjDbPSyv5MmZs1MHzhnMMOBlBk/YVr
         Nv0ygkMlPYb5jfBbRoXn6QUWaQBXWg5cc5HcY8qbKKg99I57vsWYeLU+aRMIDGZyM5d4
         TSXlRAfDAnXlRA8eZoRQsJtiqZ6rAKP0mazsgREMrcuIVxIhuJUdkR2iEVPIGbyVGAsa
         fIrR0brCXlFUOGXAJH6JCdvreClXNuYAV+t/WYg/B+UPKaSQxlPw7cA9FxQmBQwEmVY2
         vVBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Uf3eGMP3;
       spf=pass (google.com: domain of srs0=ewpo=cz=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=ewPO=CZ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h5si317263pfc.0.2020.09.16.14.37.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 14:37:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ewpo=cz=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (unknown [50.45.173.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5E9EE21D7D;
	Wed, 16 Sep 2020 21:37:31 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 03DB13522BA0; Wed, 16 Sep 2020 14:37:30 -0700 (PDT)
Date: Wed, 16 Sep 2020 14:37:30 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	jiangshanlai@gmail.com,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	rcu@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: GPF from __srcu_read_lock() via drm_minor_acquire()
Message-ID: <20200916213730.GE29330@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <CAKwvOdm4AQhobdkKT08bjPGb15N58QN79XWxEaQt-P5Dk4+avQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm4AQhobdkKT08bjPGb15N58QN79XWxEaQt-P5Dk4+avQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Uf3eGMP3;       spf=pass
 (google.com: domain of srs0=ewpo=cz=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=ewPO=CZ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Wed, Sep 16, 2020 at 01:48:22PM -0700, Nick Desaulniers wrote:
> Hey Paul and RCU folks,
> I noticed we have a bug report from 2 users that seem to have similar
> stack traces in SRCU code;
> https://github.com/ClangBuiltLinux/linux/issues/1081
> 
> Is there a way we should go about starting to debug this?

Hello, Nick,

Huh.  It looks like the per-CPU memory referenced by the srcu_struct
structure's ->sda field is unmapped.  That would certainly leave
the next __srcu_read_lock() dazed and confused!

The trapping instruction is the increment instruction that I would
expect to be there.  The source code is as follows:

	idx = READ_ONCE(ssp->srcu_idx) & 0x1;
	this_cpu_inc(ssp->sda->srcu_lock_count[idx]);
	smp_mb();

Looking at the assembly:

	  1e:	55                   	push   %ebp
	  1f:	89 e5                	mov    %esp,%ebp

The above is function preamble.

	  21:	8b 48 68             	mov    0x68(%eax),%ecx

The above instruction does READ_ONCE(ssp->srcu_idx).

	  24:	8b 40 7c             	mov    0x7c(%eax),%eax

The above instruction fetches ssp->sda into %eax.  I therefore find it
quite surprising that the dump contains "EAX: 00000000".  Or is this
register value inaccurate?

	  27:	83 e1 01             	and    $0x1,%ecx

The above instruction does the "& 0x1".  Therefore, at this point,
%eax contains the address of the per-CPU srcu_data structure, but
without the per-CPU offset having been applied.  Also, %ecx contains
the array index, either 0 or 1.  Here we have zero, which is perfectly
legitimate.

	  2a:*	64 ff 04 88          	incl   %fs:(%eax,%ecx,4)

The above instruction does the this_cpu_inc().  Here %fs is presumably
this CPU's offset from the base address of the per-CPU ->sda pointer.

	  2e:	f0 83 44 24 fc 00    	lock addl $0x0,-0x4(%esp)

The above instruction is the smp_mb().

So here are a few questions that I would ask:

1.	Did the init_srcu_struct() for this srcu_struct report an error?
	(Though with current mainline, that memory-allocation failure
	would more likely have page-faulted in init_srcu_struct().)

2.	Has the srcu_struct in question already been passed to
	cleanup_srcu_struct()?

3.	Has the value of %fs been clobbered?  Though that seems
	unlikely given that it also happens on aarch64.  Plus, the
	smoking gun seems to me to be the zero value of %eax.

4.	If the above three questions fail to provide enlightenment,
	I suggest recording the ->sda value and adding debug checks
	to anything that can unmap memory...  And recording the value
	of ->sda somewhere to check to see if it is being changed (it
	should remain constant from init_srcu_struct()'s return through
	the corresponding call to cleanup_srcu_struct()).

Please let me know how it goes!

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916213730.GE29330%40paulmck-ThinkPad-P72.
