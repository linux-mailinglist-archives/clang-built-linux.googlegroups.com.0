Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBMZWHXAKGQEEAOCDBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B289FB7A8
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 19:33:42 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id o185sf2624796ila.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 10:33:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573670021; cv=pass;
        d=google.com; s=arc-20160816;
        b=cG22zp7xftd+e0gzhVLJZHt8YV/ZCJuOPEUcFpMfZWZuRNqqUK9fUYZ/A/S/+26+V+
         9HNJWkkXZVyoiBemyqJfHh3kI1sj+BechPVV1tEiSWyApGuLrKLdj7XmMyBHM51l9thA
         dKsmVVWBfRsIOohzgGHg4GXOPQyd9ej676RqfPgcBBgEK8S765LJj0N1TAiarsx6Cbpd
         lOkiEgn9MY6vgA2IUO3X4Ey6clLwQWc0tS3TLG9ZSAXFQGkh2wg+nB4LIDm4PVUUfEZh
         wHn5INMCiVMp1yuJlZFSlKHKgJQpmJuMbW4zV8MBGtd3/VM4Hk97KXHR9xI6HfQpcUQd
         dH8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QMSIvB0+gUi4s4FR0UNiHm0g//XtuNt5lX5nXIjS7sM=;
        b=OtKwb4xW1LfVXMG1wNb89IkxsznGdjNgma4BcwpZNg6ZS6u/iQmYKCjWrfOmdTUdMd
         eGLV4uTtQSn/sxi7eflIO1boJJ+jKJQA0eaXmhc0uu4fDjLoO1TLJMNsucSm27LqkhbG
         OMTubs1LRewckQAAliMuBEUQXRdnYVX1g7AJPwO4muxPcwfRyJa1s9NsxqvUIaQyhOXD
         3QIqfP/6aUlPKh3uPiron7OuRWrLg0z7s7G7h5H36OM3vSDnajDE+NrelmxMs/xZHUk5
         lRcqmnjw8wq7LS1yAdxwEQFOVTnHHHLJV8g2GCO4u0yD3uXTT/wDvK5R+wVDUGCYT+wA
         pYEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gLQ0w0Ix;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QMSIvB0+gUi4s4FR0UNiHm0g//XtuNt5lX5nXIjS7sM=;
        b=S5kxgpKeFP8+0C8EOycxJKrGM/yrOin5o+A8FQmphGkPIUpWuGliDPn6lyT574fHDV
         EFGNcHC36DQfxhvS8L9rqVnhNgP35jHlHz6YmNyE5XtmkZlEa1JN6JCRR9ir+4EE4lUN
         HP2ZttKLSGjshZtwbfFM5xxsgxjb5mCn5z3Fa4SBVgiOC0MKwzLvISdwV/yavk7EVZhD
         d+dP69af86BCjHq9ATASlwDrbgX+TkdBubfaLtQivl6nqlo0HxZM0Fjn3kJcT/8O8xsG
         IeaOM3yWJB3ECtUOYznDOL5CVm5cUEhaA2W86hgxsX/DhybisfGMp0SZRRHHoMHpmylR
         /hRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QMSIvB0+gUi4s4FR0UNiHm0g//XtuNt5lX5nXIjS7sM=;
        b=O3dTiyRry8/PViSa9X/3+PFyWc6SkrivtGjuIHks/PIpg6naz+UkgsqmAkAoi94t9A
         HaPSDdoN430RqSApxA9mAeqozet8wEHVgycsdKte0IsASrZFQhOGCG8Cxw+tZXx8yEEc
         TCuVMMmaKhJJw23Ek0H8p/ZhpH+hpeQwIZZSLwWEy0ZSS63RMP2Tqn+7EtIEfFiU87n4
         iMI8apIOTWUP73XcHh/FkiUNrlDd5MPrts6yXOMHto6yeHluP86o47BkmJ77bQldH59H
         6gxVpdLfbvW9KgzBl5s40AeUS0lfKK97uyRKSlpF1E3vwLo0il2pkdOwLGIpqzURITig
         /pHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXw0ZG152O0A5C0Av/jXdhghsrxPWpZTVs+ExTNCRQlWNHM3AZu
	U8iG8IvcRnwfcWf0bSt2cCY=
X-Google-Smtp-Source: APXvYqw1uGigkIY6S4Evql79PRXsQnkqh+yqHTvZcAEFDtdaTv0GtbImzonf4aPRRjSBUqtXqvPWnA==
X-Received: by 2002:a92:c08d:: with SMTP id h13mr5735561ile.241.1573670021170;
        Wed, 13 Nov 2019 10:33:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1912:: with SMTP id 18ls606451ilz.4.gmail; Wed, 13 Nov
 2019 10:33:40 -0800 (PST)
X-Received: by 2002:a92:6908:: with SMTP id e8mr5510766ilc.56.1573670020855;
        Wed, 13 Nov 2019 10:33:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573670020; cv=none;
        d=google.com; s=arc-20160816;
        b=IeNDLYvRp+M5OprsunOke7LpSn3vtRsKLeVKQGO8TJ+OL2m+2IMo7BrcnEMsaPZVA5
         I+s+R/wK6gIA8smRWRNp/VY25OOgIAEtuucH+MFQDYrbkKQkNrefUhr4m0uZEPB31Ove
         BgPvBRHKckvU8q+sIB6V8Ve5gaJviUPi3fmNcFBwkh3yGqrXRKMDLOADEQuSPQrfKNbo
         pi1I5ECjkF+4K/zIhlc1VWnc2wminIKCrLvMISLbweQ4AEcMez+tfzYxliTQp3mkT8PJ
         4fpwNaAk+h5mtAuIlbw2HdqhafwGq2ywo1KzDoiRtnC26GyvsA+5W6+h4C0Hc5DBLfQr
         rOaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OhPSTTe4Xdz6gOjsaJlaEdC5pAfYubYxDCg4SrgVoSo=;
        b=jd2SPmOsscPQ01VB+juTRCXRjlj8TB+LA+xCgT7Ky1LNDAAOx/6XwOxBkrz+PgllkZ
         Y95Y7ze8OuPP7GvLAlkWGdzw+wmpxC322hHz0MCidCnWMoBp/WflFe9YTAEK+UTof9rN
         +GrOs/WOFsxJjmbQMPiF9t9hDEuw4+LTJp1rzLlU1hzJJezdFlfCC8Hb1I1iLBH4EZ/R
         5Q40SpNELCVtq19RzyQK2lbQlbE1Va6O3lFdY3KsuJ+Gop++AivlwtoFRC4CmyPHNlOK
         g+gbmCc7k+rX5tSuFmc6kUGUfqypYR/HizDzt8eiZTTGiXph4C5s5+eW8/2kFFZcvIg1
         Fi1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gLQ0w0Ix;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y205si163913iof.2.2019.11.13.10.33.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2019 10:33:40 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id c13so2221020pfp.5
        for <clang-built-linux@googlegroups.com>; Wed, 13 Nov 2019 10:33:40 -0800 (PST)
X-Received: by 2002:a62:20e:: with SMTP id 14mr6074555pfc.153.1573670020389;
        Wed, 13 Nov 2019 10:33:40 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k84sm5150717pfd.157.2019.11.13.10.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2019 10:33:39 -0800 (PST)
Date: Wed, 13 Nov 2019 10:33:38 -0800
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 00/14] add support for Clang's Shadow Call Stack
Message-ID: <201911131033.435C8F77D@keescook>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <201911121530.FA3D7321F@keescook>
 <20191113120337.GA26599@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191113120337.GA26599@willie-the-truck>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gLQ0w0Ix;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Nov 13, 2019 at 12:03:38PM +0000, Will Deacon wrote:
> On Tue, Nov 12, 2019 at 03:44:42PM -0800, Kees Cook wrote:
> > On Tue, Nov 05, 2019 at 03:55:54PM -0800, Sami Tolvanen wrote:
> > > This patch series adds support for Clang's Shadow Call Stack
> > > (SCS) mitigation, which uses a separately allocated shadow stack
> > > to protect against return address overwrites. More information
> > 
> > Will, Catalin, Mark,
> > 
> > What's the next step here? I *think* all the comments have been
> > addressed. Is it possible to land this via the arm tree for v5.5?
> 
> I was planning to queue this for 5.6, given that I'd really like it to
> spend some quality time in linux-next.

Sounds fine to me; I just wanted to have an idea what to expect. :)
Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911131033.435C8F77D%40keescook.
