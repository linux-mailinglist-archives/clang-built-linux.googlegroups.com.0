Return-Path: <clang-built-linux+bncBAABBD7BRHZAKGQEDQOYEDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id D20EA158BA6
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 10:14:56 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id a20sf6668327otl.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 01:14:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581412495; cv=pass;
        d=google.com; s=arc-20160816;
        b=H0hGu4wTTBVy14yVzDw/TPt0jAqVnQQguPAauS8xNf0ohgbvUL6zJDmz+Shk5V4VJ+
         Kv4bWN1WGpyFfekk+1WuDgz5FA8NsHD4unw8CLKaSg6DC06+XF/iUmPbCjBCGlTo27JF
         dFD4SD7X5vRNQoJcZYfdQTK1pMalBiyEb43MMytg+8aogOtHeIo4nJoaYowOo/bvS7ar
         71cwYToZ+hVO0hovBwoFS0cCDSXg3jHrY665w4cdrFhGg4NHNzdS0rlX4ay/BiFkoTT+
         l68kaUYPquYRSEjDEmhYgGovVnnU2JcS7hB7RjZv0Ldaew7/U841qMJ1GCqXD1IdmcjS
         R3+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=XzhInnAQgTkK6OaIxUfDa8RTtkOHAt3TZXiQyIA+iII=;
        b=bAMByJRY3Q99owxTgkb0Yqk7adXGiojRLwz6mQyxEm/HkDN83MgDN9xb9xtmRa/rW7
         0zSTM/k+czta9FzAfPyn982kIWQdaMhX+NY3hWg9g28/0rC1rpJB+xl/G1l4eqEanr0s
         Uk5UTbu4XUEPJwt19WellP8hIxIcH0uKostBh+tVdMgNLtpgJFQMwyrqQnSS+PvPXbdY
         sbLFkbEoXqOb3o7HjId1utVlCwRk8/9n/QGJ0yfTPAotW7/F9CRP+eDBoaWb5IhD6ONC
         5gAYDY7zvW+RlCviaDbeIW4gFD0NzHUfS87Ets1+7jIY9aDmbqsqwAg4m/maYx10MfE9
         Ne/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z7P4LQAq;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XzhInnAQgTkK6OaIxUfDa8RTtkOHAt3TZXiQyIA+iII=;
        b=ILE8/uNuJBX5B4pjGJBNJSwP0Pa7VChK6jzwPYCc6O+kQgSarGuNweGV/LveHEWg6W
         6xEEhDfjZACtm4M4ySGTrRRza7ao+NIqpKg8iIseA5X+z8+RRQeaFQ3iARcD8/HoHJ1J
         OpNHLDjFLf03Wld+1XN3jJISnO3iXl2CPIexZZVzG3LJgckcxsu/3rhtOwZ5Tvii5OTu
         Mj3uaK7b2V5gEmdJx9f7rU1gbjdIp6aJWbdKUx4C2I10DaL3eX1wIgaVUTLXAcWTg4SY
         9Rciqo22zbErdFSfECUpacqbpSirxY/O6IM+vw33Kj/kMSENAY78gumZDoj7Edivibju
         QUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XzhInnAQgTkK6OaIxUfDa8RTtkOHAt3TZXiQyIA+iII=;
        b=HmsxXXmc1ahWH72/sDQTShCT5mmfVaNXCmYNKLWY2W5XgYyduY2z7MCrNGlZNh+FmG
         3iXMYq6ncjE+pfcGcIsslkU65A99RrEsBK12Nw31UGJDEwN47DlseIeETouoiOaj/PT5
         v6P43pTmuV3CNOmbzrrNi2JwO5XMbSaphAHXuQ2tlu2TPKvYdkp5ucBvw44hZKB+EBoV
         onPtUzNSc16uKrB59Y2j7UfaAzxZ0YsllnZPOBSjCSHL1ddMtyhBONNmtMRQIHLzaQgx
         EurnKI3BDuKdhMctUNr4Jn5IXKWcJSRvDLtZKHMCNo2+e2cSQ2tDjqq8tdH7H0eYtV6V
         Dusg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUq8RTi5kxKeA7Lo+ll+VyO8hQGiPSKHOEakU7gpYi1PxU0C/wS
	Gtn5ZAQhiLVKTm21AUMOwNo=
X-Google-Smtp-Source: APXvYqwrPWMfSbd/mKX0sfXcjlJKNwvqEZ4n4nPDvxwJpINm7K6CSvmI7JYrToY7/ZdLf+T5/coD+Q==
X-Received: by 2002:a05:6830:4b9:: with SMTP id l25mr4534980otd.266.1581412495585;
        Tue, 11 Feb 2020 01:14:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:895:: with SMTP id 143ls5372716oii.1.gmail; Tue, 11 Feb
 2020 01:14:55 -0800 (PST)
X-Received: by 2002:a05:6808:346:: with SMTP id j6mr2345132oie.47.1581412495219;
        Tue, 11 Feb 2020 01:14:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581412495; cv=none;
        d=google.com; s=arc-20160816;
        b=lwE588dtM6lUywImxzToFYHrPkHsoEFkVaqvA2NzADDC5nQzOL4zySzfr3HZGG49jC
         jI2PaHIeDyEALtoCCFra1j/WhYbVaWFUu7AbgCRTG3NJJ3TGK64xrTYAYE8qLD2r2E+w
         60gWz4y684OxRk7tnvfux3qxlkpBU+pmRUVDkTTA+tAY97CauAdA6xHYGSSwcD4Whqds
         8DDipWMW2AJNpZHzeG2JPVVWj3tgubW2ZsNe09WEObaX89RygwEsElxApKaMqb0Yxy6r
         bXsfAQ2X1ax5Ok8Bz7rB4lPI3E6ffh18r5vmBJq/gPQ+6UA9VT2CpPK14ootLT94dFU2
         CXaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=pMJhkiFWjOxnQdESzswTv1FZ0VNlauj+KqWA7W92pyo=;
        b=XJo1oy2rZT4iAmfEDBFrYOUwLPqAKImPa4YtoiRzyy5afbUe53WHq9f+5d924OKXFS
         k7lq/i1MK5nDkbvkNr4hqrqddWPJ8D17YanuuuCQTVrYO7IIGA6ydQy2t4umVR0HTRGu
         IQa9DQvMYXdhIzfmdkxUaa+fOGuvHK/SUThQmbSuS49ikjmSTu1tcbFNelQPKT1zD54c
         wMkFgjHZCnLa/Tm9mebPwp3Jd/bZ/FL25/NcFw1FZxeD3OTI/Qu84iknhsHMD4AwDMw7
         HQd//GTxwGB05JogzQk4xT2vEsxK6k1arW8E4FOIVG/9piQ5tTgRa+2Zw8ot9z6zMt7b
         6IGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=z7P4LQAq;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d16si173137oij.1.2020.02.11.01.14.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 01:14:55 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1CED82086A;
	Tue, 11 Feb 2020 09:14:54 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1j1Rd6-004HfL-6C; Tue, 11 Feb 2020 09:14:52 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Tue, 11 Feb 2020 09:14:52 +0000
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Sami Tolvanen <samitolvanen@google.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>,
 Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
In-Reply-To: <20200210180740.GA24354@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
Message-ID: <43839239237869598b79cab90e100127@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, mark.rutland@arm.com, james.morse@arm.com, samitolvanen@google.com, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, Dave.Martin@arm.com, keescook@chromium.org, labbott@redhat.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=z7P4LQAq;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 2020-02-10 18:07, Will Deacon wrote:
> On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
>> On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
>> > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
>> > > On 28/01/2020 18:49, Sami Tolvanen wrote:
>> > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
>> > > > different exception level.
>> > >
>> > > Hmmm, there are two things being disabled here.
>> > >
>> > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
>> > > shouldn't KVM's C code still treat x18 as a fixed register?
>> >
>> > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
>> > introduced by SCS (in patch 5) and so isn't required by anything else. Why
>> > do you think it's needed?
>> 
>> When EL1 code calls up to hyp, it expects x18 to be preserved across 
>> the
>> call, so hyp needs to either preserve it explicitly across a 
>> transitions
>> from/to EL1 or always preserve it.
> 
> I thought we explicitly saved/restored it across the call after
> af12376814a5 ("arm64: kvm: stop treating register x18 as caller save"). 
> Is
> that not sufficient?
> 
>> The latter is easiest since any code used by VHE hyp code will need 
>> x18
>> saved anyway (ans so any common hyp code needs to).
> 
> I would personally prefer to split the VHE and non-VHE code so they can 
> be
> compiled with separate options.

This is going to generate a lot of code duplication (or at least object 
duplication),
as the two code paths are intricately linked and splitting them to 
support different
compilation options and/or calling conventions.

I'm not fundamentally opposed to that, but it should come with ways to 
still
manage it as a unified code base as much as possible, as ways to discard 
the
unused part at runtime (which should become easy to do once we have two
distinct sets of objects).

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/43839239237869598b79cab90e100127%40kernel.org.
