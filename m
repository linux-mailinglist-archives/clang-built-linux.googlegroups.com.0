Return-Path: <clang-built-linux+bncBDZKLXNI4ACBB2NC577AKGQEHXCXXGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E472DDAEC
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 22:45:15 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id 33sf168086pgv.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 13:45:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608241513; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8hhhdsd8Gznx4JmZzcPkj88kpPwJ894wgg/AuAm9ZR5/GZ9H25NsZUa0CnS3K6s+4
         7r6EW/DqGHzxccYybthzyk2qaUlCrmsyUg8CLQi1n2XPYPInb9+v9pSLXVwyplIyEkJX
         gXrXGDZBVBSxn/xy1wFCBBgGY50+4tEnLeLmu8MdjjOXGbiQBOhTRh2W2/qIuZk43YOq
         NPuAonRFDuIbVmy5hMf1a+Hf0Hh+vz1QAnqDNJjFVbWfxJ+L+cUkSB8oGTJsAbas1OZ0
         FrBNzzFbl4Q5SAmkyt17AXN7BQi3X3NCgVOSRcwtau0YywoheUiKs3SG2EuZz2B1AVWC
         eXIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vquiRqnBiuCZauOl6Iv92JSw47d1HgAB9wROFXMMWew=;
        b=Lj1RUxkEu4fLML70hUTdK0Y1A+7MMUZsOFg0cqJjRCbLmTkdl1QSNpCfMalyptf4lI
         gl2lqqlH1bHVLGXdnpZ5queP8cDwFqh5bHxaWh9wFP1kEt+5go/J9m0LNL0iRkklpCIC
         9o4xqpOlbistSeAOdUf2a3LfZZwWVkyGBphZSa52Gok3XG42GnUHm6TiudNiO66noP2I
         OkfQaxjx2sHqYY5jm7x4W1t3yVrvMNlq2uJbNwQWqzB3t7uX7LIBZihkP6k6PkmU3+fq
         mRg0ZtrvwwerRcHVHyC8a51qQRXU/SMNg187fdxgPFRAyFKMtH79gxxg2o17LuQu9Xqp
         aQkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vquiRqnBiuCZauOl6Iv92JSw47d1HgAB9wROFXMMWew=;
        b=b86K7UYCZmH+pKCg0aW28V774hxYZZxugvub/gk83b4rc62L0Nsd04bedfg782RwZk
         ftYcVQNSosVFCPFlrVAaGWq0WBZQMGv5sOpCgyQAaPYBsv4Vw9giCn86b8mBolHAfRU4
         t2GXb3FQ6njV4PHGSht1vSWagS6rsktglmzYNBhXDjsh5YuYqe2qasdaaUVK/oYqAqok
         72HBCKic8wZbJklymo/fPhVUpXF1tsKLB8hDefGUU/4vOdbrpRBVFj6aFpuwG3KP2N5b
         T6ruoxPJZtzXYxoXc9qf8kkCRK7jd4R7Q758XLl1qAF3u3jtuWIky5siAJUtHNiKrkiW
         cOTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vquiRqnBiuCZauOl6Iv92JSw47d1HgAB9wROFXMMWew=;
        b=qWCHrjHEyy41gg8IqaGkjfkVwBD206GS8kO9tbIQMEXBmAlb/CvDuFYpILRaNZZ76G
         xjvn0QRBW37Y3+7PngPkmauFapmusnGIqs21YmmMjePAJgifx/ju/IqVnYcxF52iuSze
         3JuDlpBWEZIRRCl8B4QpD0O7m8bhjwe8IzBTCV35k5LMGURU062O/6jjkpjW4TA7LWdg
         qKBbhE+0Gex58dSl9ZskX0PHL+erNxWddyk1H3HVaHr01kqAfiejr+LeTTU/EDMt8Y4Y
         PZdxcViyKgnG9ekCQgzxYzYS9Y3plYnVYF5q7HArX57LSBliqkBR52MZELxcsPYcnuHs
         tUzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qn4A+MfN1vG2Y3vF58+o+oTQYpayFkrxtjX1hIiNW/mqK4Msj
	0CimiuTyjWLbyTozQ247x0w=
X-Google-Smtp-Source: ABdhPJxHoTDWKSILhsbYAi8l1xlytkV3u3u2A3HOHyQHbDWwEp5eIKo+kfj3cc2LbVNTl8eQjmMhlw==
X-Received: by 2002:aa7:9312:0:b029:19d:fa90:3f42 with SMTP id 18-20020aa793120000b029019dfa903f42mr838150pfj.18.1608241513376;
        Thu, 17 Dec 2020 13:45:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b187:: with SMTP id s7ls13538718plr.3.gmail; Thu, 17
 Dec 2020 13:45:12 -0800 (PST)
X-Received: by 2002:a17:902:d34a:b029:da:861e:ecd8 with SMTP id l10-20020a170902d34ab02900da861eecd8mr885152plk.45.1608241512422;
        Thu, 17 Dec 2020 13:45:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608241512; cv=none;
        d=google.com; s=arc-20160816;
        b=tOqY3Q+zAk4pSVZeUZEoX5Qt8c0NnqEnl2IhMdUovLVrTjqi+kDvCFd+DKOApVdEVv
         kdtD+bWomKqr9bh5YRUm1WMNT+hc1+dZWf59W3U3NDqY2uW5YYf6fQEDUfiY3XyP4uP5
         aPNJDq4WIw3hvaM/ebYAskSJZKf+7/QCxCn4Va7SZ7JXwfmQvqzijySnGbUpQAQy6Scg
         p0H4tZKg0Mvi5xmhGFT00TWy6uYf+6bBZhkIe8DJNCwPw7bRcoBWnJiNwK4mIO39FQRK
         x7r3OjSJAy84dHaQx0dWoC9SaMHwTD6uSSgrWf9dkQazbHOtSLMrR9cCvDnFVmYNxiPC
         7KqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ZjScrvMb3ElxesAM2kVuape9BggBg28CrendYQnMleI=;
        b=s3K9e1Io1nOvGjpCEWCGpy5JMdDrPHF3TIE9Isl8grunONejIShcckozjLSUZioFcL
         lOAgaZJjdbvIkXbc6SbqVN+dPkz/gKubpa3IRO8XPAf0Oclkg07QoIgBiczv4sICT+eN
         tAGbmndRH8bx/kr9EWzyq6Pfs2LLi+ugkzeptXiYJEXLhViZH7xWiBnks+8aCm4umwGs
         ccFOZPni2YWIwVUjou4lmQ0F1nPDaiItoCSp73PzudY4pIMVh91Pgd8R4Z0wFT4u4V1G
         9qe0jR20BFfEEN/G80BVKaI8TJuMdKtYdJM/XZAydFpZyUal3sMbjLjqEHusk6Ded83y
         wcJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id b18si435666pls.1.2020.12.17.13.45.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Dec 2020 13:45:12 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 744771C0B7D; Thu, 17 Dec 2020 22:45:06 +0100 (CET)
Date: Thu, 17 Dec 2020 22:45:06 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Josh Triplett <josh@joshtriplett.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com,
	Greg KH <gregkh@linuxfoundation.org>, geofft@ldpreload.com,
	jbaublitz@redhat.com, Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: Linux kernel in-tree Rust support
Message-ID: <20201217214506.GD28574@duo.ucw.cz>
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200710062803.GA1071395@kroah.com>
 <20200710125022.alry7wkymalmv3ge@wittgenstein>
 <20200710225934.GA16881@localhost>
 <CAHk-=wipXqemHbVnK1kQsFzGOOZ8FUXn3PKrZb5WC=KkgAjRRw@mail.gmail.com>
 <20200711210317.GA60425@localhost>
 <20200728204037.GC1012@bug>
 <20200729063417.GD286933@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OROCMA9jn6tkzFBc"
Content-Disposition: inline
In-Reply-To: <20200729063417.GD286933@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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


--OROCMA9jn6tkzFBc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On Tue 2020-07-28 23:34:17, Josh Triplett wrote:
> On Tue, Jul 28, 2020 at 10:40:38PM +0200, Pavel Machek wrote:
> > > We just need to make sure that any kernel CI infrastructure tests that
> > > right away, then, so that failures don't get introduced by a patch from
> > > someone without a Rust toolchain and not noticed until someone with a
> > > Rust toolchain tests it.
> > 
> > So... I'm fan of Rust, but while trying to use it one thing was obvious: it
> > takes _significantly_ longer than C to compile and needs gigabyte a lot of RAM.
> > 
> > Kernel is quite big project, can CI infrastructure handle additional load?
> > 
> > Will developers see significantly longer compile times when Rust is widespread?
> 
> I wouldn't expect the addition of Rust to the kernel to substantially
> impact overall build time; on balance, I'd expect the major bottleneck
> in kernel builds to continue to be linking and other serialized steps,
> not compiling and other highly parallel steps.

Well.. not everyone has 32 cores in their notebook.

> There are also *many* things that can be done to improve Rust build time
> in a project. And I don't expect that in-kernel Rust will have many
> dependencies on third-party crates (since they'd need to be checked into

Okay. I did some refactoring recently and I really wished kernel was
in Rust (and not in C)... so lets see what happens.

Best regards,

  	       	  	      	     	    	   	      	      Pavel
-- 
http://www.livejournal.com/~pavelmachek

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201217214506.GD28574%40duo.ucw.cz.

--OROCMA9jn6tkzFBc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCX9vRYgAKCRAw5/Bqldv6
8r/sAJ0f6R0WCigrZ+64GanHpJ80b8yluQCgjACVU5BmqjDetFt6rHSvyZuf9Sg=
=8C7H
-----END PGP SIGNATURE-----

--OROCMA9jn6tkzFBc--
