Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBIMOSL2QKGQE65RDMQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id DCACF1B88A1
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 20:53:21 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id g7sf7131590wrw.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 11:53:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587840801; cv=pass;
        d=google.com; s=arc-20160816;
        b=sr+z419tNAlnkqH2rJaWSAjjXXo6kH9oGD+g+qUFXhDnmjvG8OsIrL7R9ms/yct1nf
         HKv8ZbQS7VbNaE7G0ibNeG9NqTSQ6nFT+a2BH7TTTVbmnVVwLiFmrj85Mz8Vj107k9jv
         DABKgEu9peRh5mI8HZQWz19cWaeHa5mW7CPOqRikeAidJE9vsR+TO/YqR1Eo3VKqRGTj
         DIbOeWjCGHi05AEl0oi78S+SxY5oXsq6k+SheLfBBChOFqR+fzp3XNKha5AYL876lyZu
         IVfycqrwpxGm9Sm0PDlC6sX+A7hcoZapdxyF8HvxqMuevQTFj8LRG3btp9oJHTW6QXII
         uZIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=CPhUH3e/zvM4ZmmjXvg1tP+bxZ0c4LoyKaCZdXAUrFU=;
        b=LeZhaOgazBL5P1ktGLN5h8VfHL8nBQNJ4Em/ASSTub4TYxuGiWsY43VttE0Li5FYKM
         OUM6ylOVIEmT5xzj7xiGFNmSsvPUrT4dbbV6byogMT3YrfOeM0ecCVYVeclvUW6zUtyt
         Udw9CEBWhMnk4A6huwmmjPgW90VhqaC5ce0ZLBIm3JDR2LwLhIPf77TftoS2kQdmqIgw
         ppQK0RsNLaVG9K9Nn/lfCksj2dGiOUIlkGhjVQBObjQvHB4ymdVnzv0Q6UERDFn+HAYu
         TqEdcR8Oz/az+hF3SAOxR1zDYPTiJhCWaGJUgEujKV8IR16vRf9h5mmk2Vzjmc0LzwMg
         +BxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=J1HDIxyv;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CPhUH3e/zvM4ZmmjXvg1tP+bxZ0c4LoyKaCZdXAUrFU=;
        b=rdVtenQ4RilChxvv6HJFexJ9ckOKFl2A9OcF4zJ1/jCfLEN25zDAJxVIfW0pWteVfx
         X/06fdwJcfdqW4qnm4hMZWpBeWx2G8AT7bYYuLK7yx8X1F2xzRdzOH7vldmRMqOvy/rT
         v8PAcZozn7OmExo61N8zvC0smN23e3jOqNyGedjSk4m82nGeDpMtgu+ZRIqHz5hiJhtM
         Vfgs9LjmiahwG7U1ASHQLPyjcs6/Z6/AXU03X2Ow4qP9D25Wwyo3IZxc/0qPeMHHBv3q
         9ESs1iA3Dzl27vRaG58qTGqEtpvWSAiM7fI2dIawi0Aq9IvSHJEvvY/sb91R2QudTfra
         bsWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CPhUH3e/zvM4ZmmjXvg1tP+bxZ0c4LoyKaCZdXAUrFU=;
        b=FCG2/kBjcUojilvNX4lZw8oaENFziA/PkCkjpJt+tplLRLj2A9OnHq4j7MpOLyl0Wx
         oSV/H9mdOiqHNgvpcmQteBBQpyJ8qEGBpfipHt7EB4b4TC1+W1PT/m4anAb/sQrTjsrB
         zeveJkBs471KXsCnl+jwkxEZIuvcNbenN+5G86+iRNKFd05ZvX2rjzHlyF5MxSYjh0Ti
         TIDuczzoqRpG//GCUm1+TtNNdS35SCuswUFNTXJnq2J7vXK1PBMJxD4DTHqVv0uMh6Fd
         SckwNA8vHMWu3fFafDNBjWQfveDDVXukNiQX+A39RSNViL2k003ox8tsH1PHtyAzYbiO
         wkDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZLUa6sPzB2OjjHrRWRH5Dj8aqmjhPk3rCplTVIY5u+fmu1jFQa
	zmRhcffvdnAVBiOMxN2cth4=
X-Google-Smtp-Source: APiQypLbEiESoDaOUKs1O1N0MbJWWUF5T1Iv7yfV0ZZlCkWS5KLgyduriqDzgrMRCrezoG7AGb3nXg==
X-Received: by 2002:a1c:1b88:: with SMTP id b130mr16986380wmb.75.1587840801644;
        Sat, 25 Apr 2020 11:53:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4605:: with SMTP id t5ls15798087wrq.6.gmail; Sat, 25 Apr
 2020 11:53:21 -0700 (PDT)
X-Received: by 2002:a5d:408d:: with SMTP id o13mr19617352wrp.249.1587840801144;
        Sat, 25 Apr 2020 11:53:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587840801; cv=none;
        d=google.com; s=arc-20160816;
        b=Ntyjd87oLpDCeLlIsjyQs6PRNmj9pRlLCCsBtHHrZjfnxyURVsQilCtDrWCIk3KJjN
         XJ2IQ9MLdvevqScRbiEsUl0Dq+NB78BnNgjy0QLU7Ol0dMdXWyAP6J3izfnjfCT16HIZ
         F/60pIrggncGOfN8MF0e71wod7qPKNowLe7+8YNRsYWR0nW05RagdftP87jn8ig02WX/
         HQ5PGceUxHAhl8wtz1Dfd2acVdDQQcHhQFye7gtPVFcHpnr5am2mTM5f479KLqm3EEAD
         wd9ov0QEKgBqBA5hQCs//tATJaDITto2poe285Wm+hpm3xlJ533IG+vYlfU1xWXIQ5Z9
         OOqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iTbPHyhUCYp1hsTKDTL6Rkak9xj3g4rssRfqZNkVLdA=;
        b=ElTW2vivO5+nQUB7vBLhOKainDY5Dgcs1X50KTcH17YZEKJFiEVGiyuvMoMbtYE7dI
         dw1U+NJo0R2jR6LD4H9WAXJzSimyBNCxQKeCeXHzDWDRzdcLtrFuCbP3ZBar2K7EdkHz
         LVOEdBuZAV7Rulu5VpJwKTYibhCU/W8NpOYLmH53LoQxtN5neHRql5YT1NVRoVf7ewPT
         +G+OWnjJEKFchyr+uyYhULu5BKavUqYrC6WPwQ3MJOuqf1nV22ozua9kZ2F6OxOxRGpy
         HNx7LiqTG+Md6vVsEutB4f0y1kYNH2sKGnwAVoZgiPIJ9MQVvuiJnOEkVrHPTZoctxjl
         hIEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=J1HDIxyv;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id y1si578759wrh.1.2020.04.25.11.53.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Apr 2020 11:53:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F2A1100B46A3E12B0A6AFFD.dip0.t-ipconnect.de [IPv6:2003:ec:2f2a:1100:b46a:3e12:b0a6:affd])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 8527F1EC0C84;
	Sat, 25 Apr 2020 20:53:20 +0200 (CEST)
Date: Sat, 25 Apr 2020 20:53:13 +0200
From: Borislav Petkov <bp@alien8.de>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>,
	jgross@suse.com, x86@kernel.org, Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, Michael Matz <matz@suse.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ingo Molnar <mingo@redhat.com>, Paul Mackerras <paulus@samba.org>,
	Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
	=?utf-8?Q?Fr=C3=A9d=C3=A9ric_Pierret_=28fepitre=29?= <frederic.pierret@qubes-os.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>,
	boris.ostrovsky@oracle.com
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425185313.GD24294@zn.tnic>
References: <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
 <20200425085759.GA24294@zn.tnic>
 <20200425150440.GA470719@rani.riverdale.lan>
 <20200425173140.GB24294@zn.tnic>
 <20200425183701.GE17645@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200425183701.GE17645@gate.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=J1HDIxyv;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Sat, Apr 25, 2020 at 01:37:01PM -0500, Segher Boessenkool wrote:
> That is a lot more typing then
> 	asm("");

That's why a macro with a hopefully more descriptive name would be
telling more than a mere asm("").

> but more seriously, you probably should explain why you do not want a
> tail call *anyway*, and in such a comment you can say that is what the
> asm is for.

Yes, the final version will have a comment and the whole spiel. This
diff is just me polling the maintainers: "do you want this for your arch
too?" Well, the PPC maintainers only, actually.

The other call in init/main.c would be for everybody.

> I don't see anything that prevents the tailcall in current code either,
> fwiw.

Right, and I don't see a reason why gcc-10 would do that optimization on
x86 only but I better ask first.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200425185313.GD24294%40zn.tnic.
