Return-Path: <clang-built-linux+bncBAABBKHWRHZAKGQEBVE4W4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id B97BE158C45
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:00:09 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id 4sf6691133otd.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 02:00:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581415208; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ni0FqXbRIx+Lm4P3j5XNNRVkfUrZfOyaYedU4hFscqsan0y8LMRMpqwZNNw5R9UYlF
         f0jOkNE9VJG6D1fdQhVFZ/32WNL7qPRFV1MrRic4zALoaNZLbfvw84ICLcGQRc5N1NgY
         XaX8pD1pIU/wCsSLy/Iyjhegs+Bf6ZGileN5VX9eiGFXdjCws/PPUfGV33bYQgLiHUif
         Yf7/LJHD/y7xt1n8Z/90iHA0Vs3xSHvUvfLUPPnxQ0TJB055skjjPawlLe0WIb6ynK8l
         AQcl3HWypa46bRQM7UPu2AIExZtNkop9oeggTlle5AAkAv6CQhryriS07Fwwrcf1d3yq
         lGFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=tJqxs8aXE6iKxxqE05u/LieXJJKKtayVAaZQ+gs+LTw=;
        b=PdQ16alYk+nLB5gueI3VwjCGkNio8Y0bE8qxsjlnPcAy2Zk9OxYFer7N5lDzVvIOMs
         1YorDJUVpCtN6kPwMZ1XXmgy3cG0Wkg1OUpVmsM3R/pD6/JGWrO6ijcs+YirEl1jNdyy
         FZ6YAkZkBlDfzD2wKS4+NWPEj4fTLo0vuxOjblADqcoe0XMV2xqbR9xlUWeTqtV2jSTI
         BUkX28Ny3CdCv8tiXoYpq1HfDJ1eeNSfBeeggvSnUbSjOTqCljP+ajwADo2jhlUUmOjE
         urz4Ad1xMo0h0Up+KfHVjJ3IBN+CXTkVpWsuwnRNRZXio6yOvfVWfCp9tn50xjSkKdcQ
         4scg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZjYMZLNq;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tJqxs8aXE6iKxxqE05u/LieXJJKKtayVAaZQ+gs+LTw=;
        b=NrzWJzkcU4L8wQwgLepWWUKW5Ku/fTjXHYU1LImKkZNAJBnH1mNi4Ocd+aPFItm4Ie
         kOfjKbOpIlRb2ojBdMd1dLWGncYPeRnlUtjLpPFa5jI2RJqMl1wxDAR2HJ/fBk2IjtcK
         NbS3AGiJBpnQCtiki1QMO7Kg3WRzLn4ZvqM03f73RjA152ZdLDDwEmayBC+JhyUKZF9v
         8EuXGhBCKzl5dre5jF41+NT1GGT6t4WBvujN7HW2dqsuiWCCHRDkA99sLympC6KTYjRI
         j3JmYctVI8IhtAOAtr2PTBA2PYaR39UrnSf4QIiXGhvQaLI4xISiFLAL4tcCYXE8iWB2
         gegQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tJqxs8aXE6iKxxqE05u/LieXJJKKtayVAaZQ+gs+LTw=;
        b=MrxLQTU69dyM7V6UZp0URhdgEfwPiipmjZQWRUi8ohVQPXY6s47djZJ5naEb3ExLs/
         A9rkEqaY3mSHVQt4rYWDHiZqw+xrxsM27Y92BtRuMIs7kvXCOhPPC2++wesUJBP3Ic1r
         xOQYjI5wNMiZUUaSN4RZ6rnbxK8cKuOejWD65SNGG8Ra08hx9oxhv5tXrYwHWGu6GrZz
         bg1iUkg+EGywqiUXrdxty6ccK8A61GCt+lz8nk/KGJgJwYLCIxMuHsXyfQxxef6QAQ5k
         zroAcK9p7Nn1SaPQAjfcY3xHJFzVECV9eb35VS8tFh2AkINmAEUPNj/8/wnIC3yfXErC
         VBeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJv+sP7dq9mpTn8PfylAov5G95iS1nRLODxzdlQBDci/6v2PgW
	BFbXCmvQ7u84bOPiStNXDb8=
X-Google-Smtp-Source: APXvYqyXiDoTg4ikf+HWYsoyuZ7Ru4gBHpiBtWt4KwAhF3FmMbW0Kb9WBwjK+12l42X585WyBYddSQ==
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr4485754otr.178.1581415208703;
        Tue, 11 Feb 2020 02:00:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4a4:: with SMTP id l4ls3135175otd.11.gmail; Tue, 11
 Feb 2020 02:00:08 -0800 (PST)
X-Received: by 2002:a05:6830:16d0:: with SMTP id l16mr4684075otr.83.1581415208305;
        Tue, 11 Feb 2020 02:00:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581415208; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4OTAG1kw47b8+sWj2CpB+GkIgIaMYg0VNpJh7WnbPZyKLLnkgZm3hqhEMjwA7oLSP
         f8sNmb+jom/L3+feVdN5a0qlAPREGQSYvwB679MKnzWBzgQzes0KG0mRSuXibB+7Vw9Q
         Uct+G+E8iyzhvlTk/3UktWDb0oavV3mckKgKlUHHJ7xRAmZq0H8WBkIwY5wkiuwvQVew
         YKZ+Wz39205j490/dvjnAk0ofvTV1CBY6x8jgoh1slKYU43nmjbQRgSAIx+jBS0Kgw3y
         8TPM+7AJ2y5cyOQ4+kDr2nRXcFswV1uWgV4pIi3F17Gqh/EnoLsPKxD0VCH4FZp0Yehe
         U5AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=ATYFIfTKfeKOqOa4KfsgIdwc3gbAtmHh9Qnz+/bX6kc=;
        b=0TLttq1gSQiyFGnGVel6xgCa2E+j0LyQSkQp68DFyTFAqN18T9/ECXVsyymbxSeqzw
         C66/tg+QH7YBYRoXr3o0V728eRBdAPgvDrbioPHGYgAmJ18CKgVP3ZIksEJuXIpvU/fQ
         yJEhzJGzwIGOjI15B+a9/ieLMOaylzrBucpr4lJcMN0elCF2i5IyA9GHiDrCAyiP29nX
         4Zw8J0D9/1N7yyc/bZsu5nsT+0ie0gQb2yzK5ocow/dnZBP3DVuw99SxN0b5rZEAVf9Q
         wQDr1NpcvcERxyLdMBcQK3nwtSQok/8o8EWGpRH3Jqc8ryHIY+jlj7aJUi+/geGkvhUp
         dOCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZjYMZLNq;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j15si229313oii.3.2020.02.11.02.00.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 02:00:08 -0800 (PST)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5851D20714;
	Tue, 11 Feb 2020 10:00:07 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1j1SKn-004I7J-J6; Tue, 11 Feb 2020 10:00:01 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Tue, 11 Feb 2020 10:00:01 +0000
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
In-Reply-To: <20200211095519.GB8560@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
 <43839239237869598b79cab90e100127@kernel.org>
 <20200211095519.GB8560@willie-the-truck>
Message-ID: <fed83df0e9140b9655b00f315814fab8@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: will@kernel.org, mark.rutland@arm.com, james.morse@arm.com, samitolvanen@google.com, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, Dave.Martin@arm.com, keescook@chromium.org, labbott@redhat.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ZjYMZLNq;       spf=pass
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

On 2020-02-11 09:55, Will Deacon wrote:
> On Tue, Feb 11, 2020 at 09:14:52AM +0000, Marc Zyngier wrote:
>> On 2020-02-10 18:07, Will Deacon wrote:
>> > On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
>> > > On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
>> > > > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
>> > > > > On 28/01/2020 18:49, Sami Tolvanen wrote:
>> > > > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
>> > > > > > different exception level.
>> > > > >
>> > > > > Hmmm, there are two things being disabled here.
>> > > > >
>> > > > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
>> > > > > shouldn't KVM's C code still treat x18 as a fixed register?
>> > > >
>> > > > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
>> > > > introduced by SCS (in patch 5) and so isn't required by anything else. Why
>> > > > do you think it's needed?
>> > >
>> > > When EL1 code calls up to hyp, it expects x18 to be preserved across
>> > > the
>> > > call, so hyp needs to either preserve it explicitly across a
>> > > transitions
>> > > from/to EL1 or always preserve it.
>> >
>> > I thought we explicitly saved/restored it across the call after
>> > af12376814a5 ("arm64: kvm: stop treating register x18 as caller save").
>> > Is
>> > that not sufficient?
>> >
>> > > The latter is easiest since any code used by VHE hyp code will need
>> > > x18
>> > > saved anyway (ans so any common hyp code needs to).
>> >
>> > I would personally prefer to split the VHE and non-VHE code so they can
>> > be
>> > compiled with separate options.
>> 
>> This is going to generate a lot of code duplication (or at least 
>> object
>> duplication),
>> as the two code paths are intricately linked and splitting them to 
>> support
>> different
>> compilation options and/or calling conventions.
>> 
>> I'm not fundamentally opposed to that, but it should come with ways to 
>> still
>> manage it as a unified code base as much as possible, as ways to 
>> discard the
>> unused part at runtime (which should become easy to do once we have 
>> two
>> distinct sets of objects).
> 
> Agreed, and I don't want to hold up the SCS patches because of this. 
> I'm
> just nervous about the function attribute because I've only ever had
> terrible experiences with them. Maybe it will work this time (!)

I have the same experience chasing missing __hyp_text attributes. Until 
we
have tooling that picks on this *at compile time*, we'll have to play
wack-a-mole with them...

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fed83df0e9140b9655b00f315814fab8%40kernel.org.
