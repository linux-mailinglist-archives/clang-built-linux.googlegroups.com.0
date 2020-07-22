Return-Path: <clang-built-linux+bncBCU73AEHRQBBB6454L4AKGQE6WY54KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3839F229FD7
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 21:09:49 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id x1sf2085205pla.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 12:09:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595444987; cv=pass;
        d=google.com; s=arc-20160816;
        b=YyAIJCXnaSYxz7KcMqahV8CFmYKFx+OVQ7PdgWcjpwNVR6ihuVJX/VlPr+uXVE4s1e
         qInjWC/rT/FiQ1Zw4mt8AoKR0V7DwrSpIg68UtO/Rj64YanE5KcfZiRurW/DWljoLjI3
         Z2xjaotexupf7BA+oimUa4SYcuPczlfBx7H83r7EeK2EyDUJFBl5Z9i4n9n26109374j
         Xu0fFzRjxS5k0RJ4mRxKLzzTJR69J7li469fye7nhrX7j61u9PEHsfnIfXYpOdMN+xO0
         FUvUlQxKG9KKC6/8J6fOJLh5NAMXq+jrLknx4ID3y3UfUx3KhAUDsOoKWCQ+UC2JGSnj
         NMTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=DMrFES4qe6Iu7e0DydVbq0NNegQvVt6QULA4dRFhA5E=;
        b=OKIXP0AHoIdmxSnJUTC0/gk4qbrKadcwJobZU9HG3bJeoy3dRc3Jxk4LRfEwZ/SFJ4
         +F6vBQxYiVW9Ab2DZfBnK0XJN8kql3klZ4/ybSUCHqeg/F0tTVvLh2XQDl4kjS5sxzyJ
         0lSWSao9qlwAx1WNzxzAZC75yA1FjaaznMxw9QKIIIa+nei/FQCAX4ZC+FqnW3ORAc1X
         7hRDNpKE4gSFQnePlEnsTyXM+N1JaFkc1fcwgOGTJmr2JOwEqx3MSMIX713x+nbjdDIt
         1O1+97MStyF/5fom8P4UMqf0p6QJaic6+CzpMoBArJOSfkv3X1G0RSMFftbcwS7cdbzk
         00tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DMrFES4qe6Iu7e0DydVbq0NNegQvVt6QULA4dRFhA5E=;
        b=GqcGpPNRI/I/RhszmkqNavPHB3sARyhBpCwbmBD9goKLbEdZ1unYXCtubyqdbjMC/x
         PwPJcMIpPfqC8O8YAtgwB25zgEdr3htwmZDEmm8lxFpHzoEO1L4FjUstwTSsC2tkSMEX
         ngNcPujGGbGSARJtnmzffk5t/596Tu4i1tqu8lBAq3FnB0v1vLTkJU+KqQDKCwyNpUGO
         wgrEMaR+E+vF0RQwnzk/dGAR7DQG6RkJWAdH19qVnnbrAHPjtKtnAVJGzxna7sHasPRA
         mS/SjD/OS9UYpkk0Dqc9K1MQvsmv24XUDPyv3lzeduJai9iSYRGMRq85cVDLAE5fLp6q
         vhNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DMrFES4qe6Iu7e0DydVbq0NNegQvVt6QULA4dRFhA5E=;
        b=ewK1l7tIkya/ELQDsm7aVHWbPLJ+vKi8hr3EITa1tqHDQthJblJVp/pAJrwly7zsaN
         etI1s4VIrHvnMESZwWn/6rKN3pCuCokgHMSLW68Pf0dzM9UCa37ett8r4Z8l5h5qEe5J
         cQx1d9JrB4MLFX6exK2p1O3aV9SjXBlENz7qsIyJ9L5WJv+q/jrto5I+I67JTnLk7B8Q
         z3puAG1X8AZrdsdSFucZByUVlVR3benXHzylwD31jqrpQr7wDSPQtNsioHcmOjR60uoR
         oKmyh+CEu60iHYDdVa3GfME0jD7AlrYVsD2ze2OOE4KH1MwgKx1GRwSh17r0vwOu+3YL
         YOlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533THocqfkILrtMqq3/Uh5PCyB1gYK6i3D3uuC9uKEzgl3Qy44/D
	bQqY4glCOv/Kmj2wGkm/Sro=
X-Google-Smtp-Source: ABdhPJy0Y1uMvegw8er0+CBPJNKoWKCeExYTS0BsLOGujL+IfCKXoW1ufWERYqvQqymsR7XH5T+gRw==
X-Received: by 2002:a62:ceca:: with SMTP id y193mr919541pfg.11.1595444987525;
        Wed, 22 Jul 2020 12:09:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9f8f:: with SMTP id g15ls1315764plq.6.gmail; Wed, 22
 Jul 2020 12:09:47 -0700 (PDT)
X-Received: by 2002:a17:90a:8009:: with SMTP id b9mr852463pjn.190.1595444986918;
        Wed, 22 Jul 2020 12:09:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595444986; cv=none;
        d=google.com; s=arc-20160816;
        b=LwXo1XvtGfiqNWDwDvDjMrlC7C8LYTJtL5k2YOF3Qls8WcOkCTCiNBmqdlxOiY0LMr
         aleF4cW9YXUE6pllNuVN7njQY0h1uQmoPS1j08l2G7NBNzYF0a7gUR4B0292UWY0yIpH
         wDT81pnMBTRwd36EKTza0KTM/v6hXUX52PXKZ2N+plJQNpvkbw8kDgCAEM/gPxAl2bWa
         0cEy6TEhmt7m+32L0//Xuz441WrefV6gLpBVSM/R0vX5UnkXKa/kCEaxRcL5JvEFA8K0
         kI2uUPE2OY7ZYA3vNeDJ06DkGfc4FxrX0gj5cC9dDxO6o4zmAzv8dEDpzd9i0p8rKT8O
         1+hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=rqOrtWj/tuaI6qvLYHwwa/YODpZHwAkaR7yTmtlPi2M=;
        b=hKcdOO5CHHs4fcZ2niZkdvpoupOB3KE2+GvPS66MlghOfO1DV0VjVZ9InZaMyj0nuk
         UOZxid8JSSIdEuVuy6aTE8+12naVR9RwZHafKrWqh6gcHMAkW/NLf/zuwJv59l5p3ujq
         /P3jnfgU7e74OF5AdPc3qwtfl3RfF3y1emShHBmgQ1qJWHmw+zL/Zqi+TDm6HdBUnYMs
         fydp+YEFHa6rvtbdzlse+VNt139nB2p/EeGSc5k7hwPNerBukjv++h3a/UqaJfHNHmJo
         Zi3wxMSWX3AGzs3SBYjw1IrHISjTEHeSHYMve4a+IGTs1CgOphjtHHMd8RIacY+Fo8KB
         TISw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c4si49812pjo.0.2020.07.22.12.09.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Jul 2020 12:09:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D81D320714;
	Wed, 22 Jul 2020 19:09:44 +0000 (UTC)
Date: Wed, 22 Jul 2020 15:09:43 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada
 <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, Kees
 Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, x86@kernel.org, Josh Poimboeuf
 <jpoimboe@redhat.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200722150943.53046592@oasis.local.home>
In-Reply-To: <20200722184137.GP10769@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
	<20200624203200.78870-5-samitolvanen@google.com>
	<20200624212737.GV4817@hirez.programming.kicks-ass.net>
	<20200624214530.GA120457@google.com>
	<20200625074530.GW4817@hirez.programming.kicks-ass.net>
	<20200625161503.GB173089@google.com>
	<20200625200235.GQ4781@hirez.programming.kicks-ass.net>
	<20200625224042.GA169781@google.com>
	<20200626112931.GF4817@hirez.programming.kicks-ass.net>
	<20200722135542.41127cc4@oasis.local.home>
	<20200722184137.GP10769@hirez.programming.kicks-ass.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=kbms=bb=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kBmS=BB=goodmis.org=rostedt@kernel.org"
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

On Wed, 22 Jul 2020 20:41:37 +0200
Peter Zijlstra <peterz@infradead.org> wrote:

> > That said, Andi Kleen added an option to gcc called -mnop-mcount which
> > will have gcc do both create the mcount section and convert the calls
> > into nops. When doing so, it defines CC_USING_NOP_MCOUNT which will
> > tell ftrace to expect the calls to already be converted.  
> 
> That seems like the much easier solution, then we can forget about
> recordmcount / objtool entirely for this.

Of course that was only for some gcc compilers, and I'm not sure if
clang can do this.

Or do you just see all compilers doing this in the future, and not
worrying about record-mcount at all, and bothering with objtool?

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722150943.53046592%40oasis.local.home.
