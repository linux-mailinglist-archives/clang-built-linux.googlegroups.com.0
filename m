Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBEHIXHZQKGQE5N4XP2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDB3185EF8
	for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 19:29:36 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id t4sf3422072wrr.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Mar 2020 11:29:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584296976; cv=pass;
        d=google.com; s=arc-20160816;
        b=IWCEeYKAANelXS/6EMIJWwxWMbLQP/c+6eNBXuW0elQP4woQXsA2Js+23H9wfNdSx1
         iD/vI80atW7Ca+Oaw/bnY2F6NtvXI2ZJVPeRBSY5zM6H8Tz259wXbJLjqhujjJdmen2E
         FwTayJj7fL4lJsJz2k4D1wMUji4WWI+qrK4TbANEp5ZdrBhlXdcmHoqkTIR5wjW8jh9X
         OG/ujSKkaK+Lpp/omWzWhh43f/BSLHBvHFpEjHacce2LVt29nN/NAb5IaO9tPtB6RGen
         LbIf1g3FGw/itwmM5Pc1IEU/jgoOCmU8O4kqA7A+d9COZ5Rig25SXjwtLpfPAT+Q7t3Z
         tY0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fexwMhGkvHcbfr0kp9Ugi+ncJiUVYyHp3Ipo8JaEYgo=;
        b=bk5QaI3U2VraLumwMOb8zSRVUrk86eTLAHNWyTQvt10TnFUBYdgKrZwgqsS0e7FtC9
         Dljsq8FVnbkVpW3usmsiyFlShzZGv9q0AgS+71cdKUDBBi/OTy/TdR44Nf11UOuvvi1k
         W8ToaY6i6l2JRPlTl7KROeN6MEEegTr22N5n4KMB5h2A3Lo+ApA6nFbEh21oeKwWjPl1
         EGX0SBc2HdQccJXSmU8bjcmnKSEbJvU2NRLWLPKWRjZi2xYsaIef3iGYur6Z/z2arWUB
         x/t5Tu0TeodDl37TScLEfRZKI+DEtaz183NsGC/x95nE4QNITIDD0WjybKcFIwPBp1uZ
         RYEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fexwMhGkvHcbfr0kp9Ugi+ncJiUVYyHp3Ipo8JaEYgo=;
        b=d3KSDDMWXapoq8n59/mGm6s+hB/HH+meNSjhowz4fQdbFAMALaDN0Q2NA289zgaIui
         PXe3RB8SBgZfVQNhZFrAAck2n5SzN3evT3IhaW8/lJs4tDf19581hhJt/A8ADpoHzTtP
         UhSq11ipgrX+be9m3/LiaTjiG3ghiI8tl9DZkx4Pplg0XU4Z2bX5ct1VvbcSDVnQBuMK
         CCWIgQF5WfHudL/R/MF9im8q4gX+EIgscUAjwx09wbfaP+kaZfE3WSs7Sxpm5cSZfdRN
         OqEK4nj/5tZCukjhWlyxx5/svWT2CkGFMusrpTXOY4gfGrCrzNfEuATM/GTT9QuCk+qE
         Yp8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fexwMhGkvHcbfr0kp9Ugi+ncJiUVYyHp3Ipo8JaEYgo=;
        b=WwXfunnOkyDulr6dy+wUP98tWBs2/1sh3H/kd17Qv6IdIeSZx7lW6mAjfH4BTaCbfE
         nfZtwnvxsd5g+jAX29dRpquzR/vHlUsI77IFNUug7n9cv4O/xLDCWOLYp6iFZwaWoSxE
         7wlu5UU0h47E2tvvm+9h+G07q4fMGdi7E8hf/gB3OASsrk47tMRkwumvzYGGx5oWIneA
         o5CKeG149RiIm93FlERNQRFJfsfj3A8VqKkLOl+6gpcV7ZGR4z5aI7h33v6qKZdpwET7
         H99ga6mNtwm8NCUQPmRAtOvydw4Xbn9SJNL4xfUKYgNZvfyom8oNzOFWh7Mhj/8TwGxw
         aEvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2eUXfzKwtMumkkOD3dVoBNwkKNI9WpuIICPhVdY2fxKj7sbqp7
	iqHOJ+i4nIxYaZIHyfF4St8=
X-Google-Smtp-Source: ADFU+vuW+Rn5Zq+Mp9onby6FjsoelyvJZKts4MsjuyVo2rgy/0hyyXq5FyUxaMnV4hCR8e/P/qIXPQ==
X-Received: by 2002:adf:a510:: with SMTP id i16mr32843542wrb.292.1584296976665;
        Sun, 15 Mar 2020 11:29:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:208f:: with SMTP id g137ls5108675wmg.1.gmail; Sun, 15
 Mar 2020 11:29:35 -0700 (PDT)
X-Received: by 2002:a1c:c3c3:: with SMTP id t186mr23838469wmf.118.1584296975774;
        Sun, 15 Mar 2020 11:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584296975; cv=none;
        d=google.com; s=arc-20160816;
        b=fXV0KI50HPfRJoiZmQUXhgTvQIoEWOawUiLZC8em9XWt9Bm5WfkCHMr4Z56aoihjOY
         reL+S/z/wZGSqe5aMvDEov4U0MVPy8zffrSOt5RRaexeKAv7Ahjq6KKK0VSV6u/tarTD
         0aY+7tc8gKXvM9Ow+5C2kWBFwooJprzuKFY60vMIFhZxL617aNA4AoIhfgNocQw1eiRL
         biGZr7djfpkSJEaTDQij8DbZvlDHwl01u0zEAAIgwUCxFxDoPshDiDS5hjh9aWm3J1ST
         HtyHtc/MZWCRYwK6d726eXrNIFPIAOlJSMz6/TxBOPBuOR67sSnOldTSgqMF0avGUmHI
         n0Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=/reC/sp52ifMN6R9TUen/3LaTxE4qMW6Isp1lqZl0M4=;
        b=vnEx/18K4qhz8VeIr4xHLI0hk4MRoEV/vrQ+BW8B16EaGr6z3LlpqCJOg2rnILY3lg
         MzsAmHcmAOahEmUbtcaQCuvU1ca5/VATlDgYqtdynqV7NjmbS1BFINTz7aI6uhSjvCF2
         W0LRe5gvw8olqwdu4S/MsqQCUP3UX64zRsxh/+tGSSiXP+A5QHnMYKa/YD5GsDa4VsQW
         c8goZ+rRY11vrq53co5TeHZniRN1mmeuTmhgCYN4vXytYudEE1hAzofel6libGaiHkZO
         gCX9x7k0NbyKQsUB2tsL3AqbFLS/QHvX9WTvAwMJxw1nhsRaEgv63EtOU5NMEj17iJC3
         z2ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o194si884646wme.2.2020.03.15.11.29.35
        for <clang-built-linux@googlegroups.com>;
        Sun, 15 Mar 2020 11:29:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C84391FB;
	Sun, 15 Mar 2020 11:29:34 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94B0A3F67D;
	Sun, 15 Mar 2020 11:29:31 -0700 (PDT)
Date: Sun, 15 Mar 2020 18:29:29 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 06/26] arm64: Introduce asm/vdso/clocksource.h
Message-ID: <20200315182928.GA32205@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-7-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-7-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Fri, Mar 13, 2020 at 03:43:25PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Introduce asm/vdso/clocksource.h to contain all the arm64 specific
> functions that are suitable for vDSO inclusion.
> 
> This header will be required by a future patch that will generalize
> vdso/clocksource.h.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200315182928.GA32205%40mbp.
