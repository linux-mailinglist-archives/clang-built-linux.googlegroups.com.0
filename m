Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBQXTRHZAKGQEMHVNWGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFE1158C25
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 10:54:11 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id n22sf6713062otr.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 01:54:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581414850; cv=pass;
        d=google.com; s=arc-20160816;
        b=rW3ZZFgjbwFcNRe7mSV4MBKneUqyPHE9Rmt6Sk/uikA/dS6ImYajiCy02pHKzd0OFH
         veO7GkMNUBVnbysp7j2uqmm8osjm/3byVShummL6/Pd5K3TaKu1XKIv4eTP/myzdHcS8
         7cha+EAMpvLG31XaDziyK8PPLigoW6DltRaOgWqBKB2oNfZbLzKalVe0Cvn5iIkdFF3P
         pcwTIsdPiIgkavJriy3RnbCYU7RcK0VhMN49cGYKo1ttR9ui2ruvxmFXpZHEsnV6r5rh
         Y8WjjTxDixSxAQ931/bSRy7x5HCVcOVjvKQ4Ebwm7j2rLS1iES8+CuUCzkCp70knHkmu
         m8vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=h2cW+gqA0mrJQUL8smikfvSOKxdDZNpWMKvGzMl5DC8=;
        b=B3FGHGZVsALlXaRhR6hHYQl+vQPOjHcYRwUXehZj3LOv8ChTpHnuuwSoOYuBdvSglg
         VuEa7x5bDQbzjGsw35ywBOV1ymo0wUxn2AFjPrbEgn8wLn81a61PqlV/iKRz5EUmNB0X
         E+puFGLadMJl9ki/zvxBAlnq26OHZhpB46pc6618oAWZTvuJ1dzJJHbJWSPDCtmebKUK
         dhR2d5Ks5w7BHBCau2G2AdIL0O+7VieuB5d/urx9utuQ//cCjDOY38xTyFvpHmYNMHvZ
         VShmO3zpVNK6ibq2H2fWnTP9vYsyhazz1VXknURWORvw8XKO18USjzadXcuE/oG5pQns
         4FXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wPuXWwxp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h2cW+gqA0mrJQUL8smikfvSOKxdDZNpWMKvGzMl5DC8=;
        b=Cd6JBCHQHPTRdAqHXXgCSQAtAKsVvv1tD4s6J/aMVWuqQ0+cuPwx2Jl0TQlOl+QeSd
         AWZGRdM+BARqWTX1a9bGFtjWIqZstZrrrAL6rRYYVpQYa5vHVaxpy+Agro/DFdr+J65h
         QXhGq15JAVLLLt4E4yJ8eDlicmiItfgWmukPTkRuk3LpcTpKdFyPmldRQuER/g4QSgZ9
         B1vxxsy2yjKbeYx3Eg6ZvVrtihKtqeDYosbNLlZIPCffzJ+3FXAw6QqrEXLRdYHJnjNl
         PxEQwg0Rs7DtP6LOF5m4CZOC6M69ULib/l2qn5SbZ+o5xfWukrWlTx5oEOORxGkZtKBP
         dxcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h2cW+gqA0mrJQUL8smikfvSOKxdDZNpWMKvGzMl5DC8=;
        b=mnZ4ItwukIluSrbm7MGFe0LXKj6Sd3lOkQyx5f/EA13YTcvRY8LjQFyYMLSOZF0zjS
         hRuQ4yPfta35eVskUwfOUM51uf6CywfDIPoELEAVcomr6/iRUjP81kgG83hwxaBgSm3K
         /EttgOjEKq3ItfyOxQfSlx1GTg1Hvqn9A/CiV+5CFdSMW5+rILa4DQXFkRqovB6Ir1p0
         h2DKtNVnvjXd7z1gWIVHVygmegm1LcreKGVuEEE16q+7FokWTEBVOa3Edw+DIOvmoncQ
         eExRn3BgBtfstmGTNsH7tuNX8FpcMMop6aGbOFwft1YphITpiA0f6JTgPKuMjsmoztgy
         LV0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWtU7yyj5GKfpZiyzfHfq36h/cheC7xbl3/3AyhCg1V28Lqr6aR
	Zsn36BMFdGiELHaGSxOTfFY=
X-Google-Smtp-Source: APXvYqxAGGx2cmGpzEpiBm5ErrHa3lQKwGWAzlSBQGPVkvgCBG3jlR56pP6ljZe0opligGfxQpYVOg==
X-Received: by 2002:a05:6830:22ca:: with SMTP id q10mr4837785otc.280.1581414850285;
        Tue, 11 Feb 2020 01:54:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:895:: with SMTP id 143ls5393844oii.1.gmail; Tue, 11 Feb
 2020 01:54:10 -0800 (PST)
X-Received: by 2002:aca:534f:: with SMTP id h76mr2341963oib.23.1581414849961;
        Tue, 11 Feb 2020 01:54:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581414849; cv=none;
        d=google.com; s=arc-20160816;
        b=GwYHQrwMMVVDYn93h3Ds4S3j04FIsmqjrLjKbvLr4ZmfJorFLLTlkX1D4TdNPB6gog
         GKS16kqR848mGNJ3Cfi5TdWxkc8qAEewNErCEO9lux9YQQa+W2ykRK7AN5cxzh+wimOS
         iO8yUdbjhzP2LcCLaRUgyi5UofOfDdT9cS7aFg5jdZzrPkcLmWhknj3PTYFdFHmtaQuL
         AvO+Thyv8l7rKloc/etxEgeMvSzx/gho2Ah+Yc726RSkG4S5ye+5/FDkYwaxGaYNVg/z
         KDUzaNqEhl0CSy7+mINkraKKkkrexp09NK8hmTIz9ORjq6EXSOrTTa3iN+vivCC1kzAF
         U6iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1C+XmkNfhPjgzeKMEcVvedhUSZX/jodHDRmUI7vJix0=;
        b=uhhn8a86HPDaiAfgLQWvG64BgQfHlQiJJfPJd7FfKkaeezwOA9f5q15XBl/Pfba5wQ
         cj0usPMAzdqlOrtvoaCpYzjdgkKfKw4W6fRLD+6okpYOXNajfBItXZbOE/u5IuE3rrmY
         +CCudbJqm7hx4gQI2BPKnYKXHLHr36eZSVPf6/gnfx3bWgfR3NuL+32gpKispZwBwSqG
         LGRNJMkTK8zhNjKd3cS4fJvd9PLHCxYzkuZr6tzD1r4Ja/x5TBQ6OUeqvc8VAB0fV6yc
         I9YVc0nZA99WnG2mv4ITkCCm5d69MBVk/j9qM1M+2fNGaVYRnynSaR8CwJWw5d3pTsz6
         fNPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wPuXWwxp;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o11si149348otk.0.2020.02.11.01.54.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 01:54:09 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E938F20714;
	Tue, 11 Feb 2020 09:54:05 +0000 (UTC)
Date: Tue, 11 Feb 2020 09:54:02 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
Message-ID: <20200211095401.GA8560@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
 <20200210180327.GB20840@lakrids.cambridge.arm.com>
 <20200210180740.GA24354@willie-the-truck>
 <20200210182431.GC20840@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200210182431.GC20840@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wPuXWwxp;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Feb 10, 2020 at 06:24:32PM +0000, Mark Rutland wrote:
> On Mon, Feb 10, 2020 at 06:07:41PM +0000, Will Deacon wrote:
> > On Mon, Feb 10, 2020 at 06:03:28PM +0000, Mark Rutland wrote:
> > > On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> > > > On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > > > > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > > > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > > > > different exception level.
> > > > > 
> > > > > Hmmm, there are two things being disabled here.
> > > > > 
> > > > > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > > > > shouldn't KVM's C code still treat x18 as a fixed register?
> > > > 
> > > > My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> > > > introduced by SCS (in patch 5) and so isn't required by anything else. Why
> > > > do you think it's needed?
> > > 
> > > When EL1 code calls up to hyp, it expects x18 to be preserved across the
> > > call, so hyp needs to either preserve it explicitly across a transitions
> > > from/to EL1 or always preserve it.
> > 
> > I thought we explicitly saved/restored it across the call after
> > af12376814a5 ("arm64: kvm: stop treating register x18 as caller save"). Is
> > that not sufficient?
> 
> That covers the hyp->guest->hyp round trip, but not the host->hyp->host
> portion surrounding that.

Thanks, I missed that. It's annoying that we'll end up needing /both/
-ffixed-x18 *and* the save/restore around guest transitions, but if we
actually want to use SCS for the VHE code then I see that it will be
required.

Sami -- can you restore -ffixed-x18 and then try the function attribute
as suggested by James, please?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211095401.GA8560%40willie-the-truck.
