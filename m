Return-Path: <clang-built-linux+bncBDV37XP3XYDRB55VQ3ZAKGQEDK6IGPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id B8208158200
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 19:03:35 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id y15sf2880441lji.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 10:03:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581357815; cv=pass;
        d=google.com; s=arc-20160816;
        b=GlqAOBSePth7fek5R7BdFNP579l2ku2uogZPMmISBisd3RPuheL4dZHK8WnaSJUEbz
         gEIMu8nrye/bqADPc/MIE2/e0aLOLPxT3yQ6UDOfohUM8eC9060b38hoSKPvZwYJhg6H
         wyiI1pRqGH7Zx4r5KLSN6kYsttZGrlO3s+js1QmojfHTXDHMfQLUVf7KDIoorqbNG4w9
         Qvxzf5Rl1fTZxubcpiEKYNipBJQyGvHADZ2M0ODwcfsfr2YaJrkAhzkPOgMx9xyQLOKB
         tmVcMJnXzNJ1xSou8p/JcQI4i7Ap+fbGPlA2nLtEd3x8cet+iJofbtm08U7e/RXokVM/
         7TRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qyjxbMfMva5OyCEePDPWbSsllfiVWwG8/UwSepY02hE=;
        b=whhyOhhSLdHWz28oTaddbjhUxaYsO9JGHj0YLyykk6+9QW1cSzHiNaiURI3PPOC9z9
         E3Ir822zdp5P2MBt/uHK0Orrej4TGG8sCA2L02TyBJd8bxzrG7X2dmiDUHPxv5EHZGQT
         J2DWu7vGNudGD9FrzOwZRRKArnt+JWbrjLtTVVJZbQbVDAKVAqDLqaLVv1eKZ8s6wqfp
         cgP5U5X5g5gjr0rRIyMRAco8VRFuO+9M+l6HayPVsgkqLSWP6u6ZTM/EL638FtGtBO7M
         vqoR4La6peAHCjZrvsMvrbFXk4doxPjG4K7+6AUOnmDBifRAB7dr0XnHvPNalRl3V72f
         HCig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qyjxbMfMva5OyCEePDPWbSsllfiVWwG8/UwSepY02hE=;
        b=o4Azuj2Wr1AzcZ/pyl+49Qt0g6fKIh++BNwXubnicOMekKxj41UCJKD4BFntUeo4HD
         Q3t8ifD9DK3yTgHUu/H8xxRezwSdExgEfDdvq0TRO2BYrmRQWllsP7lR7wtEtboNWCrM
         5QWBzKcsDxb7yGYlmmM9AnnMZY/sk/5Ur6vfYUygeqTPsUZmN155zkeOzIHfz5iFJGdk
         QY9THkQW6M73DIy5fZK6Iu7y5677A2UB3cwQ2I5WqIRYCOyTZfcNlDXC7sYJvLeJ6bBn
         0MTvusL4+OKJnUxFlnxWFWLnc9DLS1Xk7r8KYIBEGP6lrZCsijKcZFw88myag/GmIrOF
         5Adg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qyjxbMfMva5OyCEePDPWbSsllfiVWwG8/UwSepY02hE=;
        b=gwVfZd/1AVNCiDQ/JaKKxCUG9PZnKC6WAOfA9hA0OnrWtXLZJovDsp3Qg6C+7KUGIe
         h3W7MwDYkFN9+twe34Re+tTvhZ/uUmRkT3GTOTrkSkheSvJgpfRT6hOQgrWiGv/St++k
         vpqM41eSl78HVQLGv5f+NsMidTKiZqn/qpn/2DN8CcJmgJKQd9DP/s3FbH4h5A2xxYTW
         JC96CnaDh9g9Ba7kWrmBcQK8mODATvo7g15bDtr3k//x0OmgdhkE+xUs3+MEQ4Ycm/Vo
         1n+hyQjICC5Le1jvSbaD+h+OQDTgjr51kHrhNwnvkX8ZTiD8CiEWJ90ajwPQwx7oVp7T
         TgbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2Ly7APWVwgrlfNe84H6kqQ9GgqMilWCKsNYAIJbPNojerBvEp
	iHFlT8WSSI5v1d8nvv83Lec=
X-Google-Smtp-Source: APXvYqywtcBUCyNyWVi9mQ2q6wYn3/gM0YM9xHUpS0TC5b/T94QgJKNqlHTPS5+VhBZjH+h/OrP4Aw==
X-Received: by 2002:ac2:43af:: with SMTP id t15mr1406529lfl.154.1581357815234;
        Mon, 10 Feb 2020 10:03:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:48a8:: with SMTP id u8ls988544lfg.7.gmail; Mon, 10 Feb
 2020 10:03:34 -0800 (PST)
X-Received: by 2002:a19:844:: with SMTP id 65mr1389390lfi.20.1581357814400;
        Mon, 10 Feb 2020 10:03:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581357814; cv=none;
        d=google.com; s=arc-20160816;
        b=K1o1lFGxE7c88kO/Dqwd7O2EI/vttRjpJrw4i6UIXC0fXZqRJNNzjUH5bPozqpXw1T
         1ytQURJgtmlQFep5egZlBjULkGKDxUgC2POmLUjmeYLPjTiN9TDCWzMY48otJgpvhY71
         egaLicQToLeyQKUpXVLJJj0/L839S7h15Q8G/NddRyaBjz4Jhev2W/ZOF7HOz1LWBw4h
         qjwd4V+8IKfmgWwMBM6QLvceQRVFi6OadyvN6Ma4lo9k5m6Pr+YWCnGK/w9QjB98oymq
         9RVTCYLrG2xNZ089X9ItSvQf8JcoxGEbITL0iHomwv0tKE/r5N/K2p3d6q/j8Tphj/sQ
         D1/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=lGba3rBzUElT5Ji7iVV0WmoVZXI+aYKV1+LwfDPlK20=;
        b=h71HBPVpPY9rl0sdyns50l8oV048/+lEOkIIYvrIhu90fOICe5fPLJz31JW18UzqMX
         Ez+mLgps2tu5KhVoKN8GXxXw+btqnZnYsijfL0wg8/b/zz4p46Yj+zK1I86AqKPt2s7H
         PxKSL0ujLbc1/J2pdfn/ywoNWEtjLufF3gvRNSSAJ+okSFdojw2VW49GZQlZZNWQsvQL
         lepaASeIVgFmCnZMyIPS9wNOy2rchohNKiuz4zZeRGXMpbNW2V8u4pkvwJGMX/gcRTrd
         kAbyDfudGKZaicpZiWa7JDfDa2nx52UtaLJUNBzbQovAhpjvnxmuP+/qpE7khNra0EgD
         O+Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a11si55246lff.0.2020.02.10.10.03.34
        for <clang-built-linux@googlegroups.com>;
        Mon, 10 Feb 2020 10:03:34 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EE7601FB;
	Mon, 10 Feb 2020 10:03:32 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0C3D3F68F;
	Mon, 10 Feb 2020 10:03:30 -0800 (PST)
Date: Mon, 10 Feb 2020 18:03:28 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
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
Message-ID: <20200210180327.GB20840@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
 <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
 <20200210175214.GA23318@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200210175214.GA23318@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Mon, Feb 10, 2020 at 05:52:15PM +0000, Will Deacon wrote:
> On Mon, Feb 10, 2020 at 05:18:58PM +0000, James Morse wrote:
> > On 28/01/2020 18:49, Sami Tolvanen wrote:
> > > Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> > > different exception level.
> > 
> > Hmmm, there are two things being disabled here.
> > 
> > Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
> > shouldn't KVM's C code still treat x18 as a fixed register?
> 
> My review of v6 suggested dropping the -ffixed-x18 as well, since it's only
> introduced by SCS (in patch 5) and so isn't required by anything else. Why
> do you think it's needed?

When EL1 code calls up to hyp, it expects x18 to be preserved across the
call, so hyp needs to either preserve it explicitly across a transitions
from/to EL1 or always preserve it.

The latter is easiest since any code used by VHE hyp code will need x18
saved anyway (ans so any common hyp code needs to).

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210180327.GB20840%40lakrids.cambridge.arm.com.
