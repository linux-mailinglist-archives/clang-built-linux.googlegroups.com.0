Return-Path: <clang-built-linux+bncBCO4HLFLUAOBBI7Z5OBAMGQEMP73ZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E91613473E7
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 09:47:31 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id e29sf848646ljp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 01:47:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616575651; cv=pass;
        d=google.com; s=arc-20160816;
        b=qBFWGkGl7yiefCtXyZ5gT2Cz/v/l6g9z5p+3hpo+xmIrQ853qKsl5j9OpVkd9afYVi
         02eU/WS9CpCEl0bnJ1nsN2FQZM72Z6rb2UvgjQ7HFDk72v76sE6Ra8l+XEXD+AOqpivl
         uAX0cT/b7fHW6917lxdqaVAe92GsCZU2S4Skp3G3bQ4r/LM0dtngJrPNCWE55dB/phwK
         FjP5fKaJ2aLlmlpL4hoYvigGzCNBFfQWPEey/GItbYP+nZ8YmJdlN3SBk0r5GFAM87eN
         4R0CuGFU6ULih/E/ojezh8DkCruz0tHBy7Cx+i3SXVfW/iINh19gU0nye61VK6awwemw
         MFxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UYCSvhRBQtBh5dGqM3WsuUQidXTQxwR/YsoANAhlj8E=;
        b=oofZ0aKDkqxYg1bYL7MWQ9tETDJ9VB1woRhybOgHCW6wnfq+1qNbU7Dt3HgkGURaAM
         jralR5twp/sDYSwjz/eTPqBgM0SpHllNWMz2ykqsg5np8c3ntNJ7lJTExLxfxUJUb8q7
         cEJeQKQ20CjsAWP2oReC3wNAmwUx8d2cn7RbWsiFg9AwQ7GEqe/+jBv3ziuJZTwGXX6w
         7x7XwfWOZBSTbArjue3eEa/K/+IDG1qYZWfMHAGn8KM26gkMTxX9M2Ol8n67zDxLqZ8r
         AUmNFrt0IV2wPGza5xy55XaJKn3OnUMliAXpDuy7Ta9ZNmoJX1r3WpAMBbhMQ5+A07W6
         +bmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UYCSvhRBQtBh5dGqM3WsuUQidXTQxwR/YsoANAhlj8E=;
        b=dBRbBpnooo2qDnOVR6771p50otDpHXQQSVFEyLnCtsudjXQMMABUNs5Mf38XCN3F/a
         +lOExcW4xuiAKo8C3J3GrXkcWZqjvyhi/BvgEGoHM6CDVDTe5aa5wQm4x6aYG3CoByiR
         x269+l73ZQ68cNYHA+SG9E/LvD1DAvDHrpNuALENJHAGywcByBu0045KSP+Pp/v0N5Kx
         Lj2eiPRRzgs5keuFNjv3g6kOgxhkC+qt74A5IgDtlSd7P/7ohzK67raf3kiJpi32l5FD
         UmU3GAaSiXwsOtYqZwd3ELtMqvtTdZZGvv0iM72EVzWP+Xhiap1jAOh6+TioGOopeYOK
         cPxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UYCSvhRBQtBh5dGqM3WsuUQidXTQxwR/YsoANAhlj8E=;
        b=g8lvgFUe/2GtZgC6dT1kj9h7b3mAfqDg48JAv3XRCT64Z3c4V61GTykxSD7JMv9wcg
         EDKstToR/4E1pFbkBKGqc27uXtwOyADL+QepKjblLGms21XpsEr19/D3GPMDT7uv/tqc
         XBYy2+Ex1D9tY2vcRTUOMbxxUp0PXN+13HG9kPUA7MXNoEz5SfzL9FAAIhRtnnuAV0kU
         vqGP6t/FCdvjUJF6ASjLCm3uFCWsAkOUuzbFzVx6B+M1hssmM6ns6sMf23OAL4S6L25G
         pSSm+Bh9ggMmmaiCCZJOEmcTcAzxN/B5UKQRR2HleNirPdklnCdRc+bt93roX1HoonWL
         a+hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CDj1jS1+M+ZykpeN7OqbWwd4by4/ul+3GWTZ0B4/RVegPiGRb
	z0NVmJbdyCrsDZw0NM2muY4=
X-Google-Smtp-Source: ABdhPJxd0AePELamXNGokyaxnN0FWGKM8AaJQPTYcT2r52BrPi2ES4YIIgsFpz+lCKl+yeLFNKHcVA==
X-Received: by 2002:a2e:819a:: with SMTP id e26mr1454759ljg.222.1616575651486;
        Wed, 24 Mar 2021 01:47:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8503:: with SMTP id j3ls302479lji.6.gmail; Wed, 24 Mar
 2021 01:47:30 -0700 (PDT)
X-Received: by 2002:a2e:8503:: with SMTP id j3mr1428679lji.272.1616575650475;
        Wed, 24 Mar 2021 01:47:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616575650; cv=none;
        d=google.com; s=arc-20160816;
        b=NI7zwAXzJDjn187cJdKzP6lTsBSks2nxYsD/D1Sp5vs+wobsI0oq8KvAbz1yInF7ut
         yHJ/TiQb9EdW/n2cPVuca4vzXmQPMSWNtFWA0ypuVm4LEvg2Lb5qo3h3KZEWVRKYlFDk
         OXJSjHO2CytfHVGLbbbXDycZsc9PVdNwVLTPk99vt63RkOLnYZJ/8nSfVkRXVH7w7ZTX
         he3DPcPOUTegh/PCopz7cDOPcHJbFgB4XFUByfxS4/bmDbLv9PlX8oioXMn3QdYCuY7q
         eYWWrDZRIbJh49xCSx0MyP6TLJ6J4JAXu9aWuzC14nfAbItoTDxhjpSq2i+G8KSJDMaA
         fTiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=PsfOLxUhFy+GRXKFvDCTa1V5Dg61G0zvb2FsVcFIFyk=;
        b=PeoWgmhquuJMyzuuUjCwmQ+8AQlhErf3VgVSq+xO7Z4zW8eNXlVtCY2jxRnkZ9QsgU
         TFXWonIIq+Mz1ASV/U7Eb8RnDMVcu9OlmBUUL+fbbD6QsG5Ry9WW96RyNX3oSGMpdbC9
         hx7On0Wdi8Q7bP2wxhB0Vxja//QGdF7pvvU0wigfausRmvcLciQgFLHB2wQFehT8toER
         /veI7uGRswapsrT8V3d8rCJm48u0YkhTA3mDfVYNbOpBqVcYr1MMf7zyS+ywWJvXw/TQ
         G3s/JPMbntSC/ShDydWY5SCJkVUzFBTlr2vd/VwAthA5Kj6hRr4V5+WYMLFmu2keJWAC
         M3Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id a66si52188lfd.7.2021.03.24.01.47.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 01:47:30 -0700 (PDT)
Received-SPF: neutral (google.com: 91.189.89.112 is neither permitted nor denied by best guess record for domain of christian.brauner@ubuntu.com) client-ip=91.189.89.112;
Received: from ip5f5af0a0.dynamic.kabel-deutschland.de ([95.90.240.160] helo=wittgenstein)
	by youngberry.canonical.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.86_2)
	(envelope-from <christian.brauner@ubuntu.com>)
	id 1lOzAi-00019I-JR; Wed, 24 Mar 2021 08:47:24 +0000
Date: Wed, 24 Mar 2021 09:47:23 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon <will@kernel.org>,
	andrew.cooper3@citrix.com
Subject: Re: Plumbers CF MCs
Message-ID: <20210324084723.q3l5wehl33t6uo4c@wittgenstein>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
X-Original-Sender: christian.brauner@ubuntu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 91.189.89.112 is neither permitted nor denied by best guess
 record for domain of christian.brauner@ubuntu.com) smtp.mailfrom=christian.brauner@ubuntu.com
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

On Tue, Mar 23, 2021 at 09:35:10AM +0100, Peter Zijlstra wrote:
> On Mon, Mar 22, 2021 at 01:23:03PM -0700, Nick Desaulniers wrote:
> > Hi all,
> > I saw plumbers opened call for microconferences:
> > https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/
> > 
> > I was going to put together a submission; do we want to do a combined
> > toolchain MC, or have distinct ones this year?
> > 
> > I know in 2020 the GNU cauldron was co-located with Plumbers, as well
> > as a GNU Tools Track MC and LLVM MC.
> 
> A combined MC focussed on kernel issues seems very interesting. We still

Seeing the discussion here unfold already in such great detail it might
be worth considering either really running a separate MC focussed on
Compilers & Kernel as Peter suggests or have a full Track (combined or
not) and taking out a day just for this topic.
Both cases would guarantee that you have a "full" day available for
discussing these issues. But maybe these things are so fundamental that
having a Compilers & Kernel Track might be worth thinking about
(presupposing we'll have time in the schedule to accomodate it in
addition to e.g. a GNU Tools Track. But I think we would.).

Christian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210324084723.q3l5wehl33t6uo4c%40wittgenstein.
