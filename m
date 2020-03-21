Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBVEG3DZQKGQEYB4GP7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id C33A418E0F6
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 13:06:44 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id m15sf1624939ljj.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 05:06:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584792404; cv=pass;
        d=google.com; s=arc-20160816;
        b=k7yDUrkcXU8PSjEYaAn4iiI3V6MQ4Ca2gR019d4xtUPxKV60OOJSdVfe73g99V06r7
         n7T6HeXpWm09w4NI5PKb+eiKHil7L6ussoZhBsjMRlykJWGUa7DRPe36pMO187Mrh4q6
         lscJHhjcupiTb6U8zNZDlLUDv5UVtPfcu4+VkeGBciaXyVWtVe7zUWdsQd/zm3/wHL1R
         dFvcBwVQ6ERrWTF0D1tKBbIWtCaBF8e0g8FP9TkVnrVVQq5aITai4I6in/ke9yiU6QV8
         KEMvxpuwJZPRDPcZEPBTmlNqe5+YIjgnFM5JMuIyVJ6ySj+m/mu6lusCMf9DPLhAyV1F
         27SA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=kEcNcIFd+6VC19me7/FWWJk/Pca1voZgIgLo/BIaRIM=;
        b=dgMcspGzEU1wrsdypJzbc/f+T2STUj/z1riT7jvDLoQQji8WXq1sfJsHUK98qPz1K1
         YP760Y3TDXntoksHt5nohvR1MN9ShQLFja2JtrPPH6wQ3BfxmskMy8SNvsaRH7x7Io9b
         p4pIATSeAyuFrhJHbocELNTkXIhgeAhLocyyjGgdMWTdu9njRqdiqUrWnGW0ccU4ovxQ
         6H4fucUvsapIm+j7nxAIT3+gSI9P0Tqzl6tCrm4fNXH2YRXJ9yaroPLQaMJqecSA7+RJ
         T/ZV3EVQnjPWXvEfBzC2dpy6NnxsaOa3+CbickIf9F52yYoapQ9qJEiX01D4r+PTHyXs
         GvBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kEcNcIFd+6VC19me7/FWWJk/Pca1voZgIgLo/BIaRIM=;
        b=db3yaYLl0UYVWqUBd1bxvatotG1NlpsBdOzVlEsJ81ctSY63NNvlXSFU23NRWeawnE
         JKipvLS5GBVlgefNIoa/3zz/3AftJokqNuI4zzHHz6QC/OnYAkR7AR/hS/yoP2v3z3NC
         JyGUQtwSsTIeELyXiq/0XJ6Ul5Zh02axS24nIgrtsfJWdhhNMb7ytdQvR8yjvxHQKAO6
         2ryKZe6D0ZMbvlOGLvEjFX1s5vLQoVEqAXov/7Oxv8sJpXIfi3R1OL/MDfxdO/dAVOL5
         KrxbOUnxOMTk52rQUCBCoABV0DP9XOd27YCIdXe1zbXKtER2xlrRT5IUZLB7WqiBF3aF
         NR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kEcNcIFd+6VC19me7/FWWJk/Pca1voZgIgLo/BIaRIM=;
        b=bqGr05Ny5ZogmwbLAbyEEgWZ4D6Qy2SSF7eajlMiIWFAUxxK+nvmK7WIg2b7rUQBw0
         Lrqea411Ql5YJpSfgErJYeFOsv+A2PeMGiQ/l0HkB2qK4hb45uvosSrHrWyK0vywM7/y
         RnTVOEaLTfRWj+uJDzynSsl5LcTHOEVuq/PmpJHHeIo33qKG57D8yIIzzW8hoAZpB8/e
         /B8PnW65HYeClc8MxJXe6zoa4HWU7IR4P1WUQzW99nDwKE4ibVV8pthuONV3zLoSUsIA
         bUEPgGaRgjFGWlm/Md1EelMJvKs6fwygAiIcObPMKY1bZcjpHDC5C60iJmUErgcyuJUr
         2Vjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1N6WFBQhO3zI5C5OmqfUOh8sw/iGBkyUinerUIpDqJNAjgi3LF
	S90cFeQyKg45UR2ciTN3sh4=
X-Google-Smtp-Source: ADFU+vtRF7NBjZWnGfibVppbCalB73LiPZ45TcEt4AUtXb9uv7qa67ahOO5k4YBZJgS3RNeFAeWxaA==
X-Received: by 2002:a2e:9605:: with SMTP id v5mr8492092ljh.0.1584792404302;
        Sat, 21 Mar 2020 05:06:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:1103:: with SMTP id l3ls1401983lfg.6.gmail; Sat, 21
 Mar 2020 05:06:43 -0700 (PDT)
X-Received: by 2002:a05:6512:1116:: with SMTP id l22mr7910962lfg.70.1584792403434;
        Sat, 21 Mar 2020 05:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584792403; cv=none;
        d=google.com; s=arc-20160816;
        b=TwMS+eXc7RXJ0QvNNioqg3+d9E69jt8tqke5xZIfk9xpFSnNrdWal2EP3M2h42XCZS
         4nJgp3vs5XNnSGiMJ6uYK4CuIwDqElOH82GLiW4sFHYXIF87oXL/S8Tn2aQG7GWrhmzD
         qky/cwAQOCNAvtjrx9WbLg0m8tsZ6fMVh+79ql9Xg/XD6I2Ny/DV4dGq04dd9JBVny/B
         MsVNcz2BmA8ecKWBAqYq30a1wsIpDVHzV2Tyy63EVLFF1u7gtF5gA+IeglTZsFyv2Gr8
         Ks238x8o+N4wRW+h1/snEFE/q2Y9gwSh1+bBh3v67EVJs0EZwpGAFg4rAzwbPl/8YCmo
         JV+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=G/U+9hCPERXX8T84VeXJyJ9sGIdejTiw2eOmSp/GQbw=;
        b=RDpvYvEA8fPGzySI3Uqou6wG2QZrcGsYRxAEVdh04saHZwIE0zBZLTu5rd+qzeE2ID
         mc/Dzuu0e4l/ePQiCW0vOrnsh1hwd7WfxWeIczXcNDlZS6ScB67ixRA7KjhvfzgN+Z6O
         lskzWww/wYfpyv5cbID3clQayU1grHZNe0XRCY/ULzqhaoSzSvZyrgcBA7lHW4D7JvG+
         46EjEL2DGtapbhD4ckkc5ncyQVbHLWrmNGO8CIEh7Y1rAABwZHGbdU1DnHHyoext6lQh
         5kAphA0UlEGvqciYPYD8bDkP6H39N9NUTDaKUpfquU3q7ykCUb1+uuEYtpwfDZxNsIDh
         rDPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e4si337620ljn.1.2020.03.21.05.06.43
        for <clang-built-linux@googlegroups.com>;
        Sat, 21 Mar 2020 05:06:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 134EC31B;
	Sat, 21 Mar 2020 05:06:42 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 026A33F52E;
	Sat, 21 Mar 2020 05:06:38 -0700 (PDT)
Date: Sat, 21 Mar 2020 12:06:36 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org, x86@kernel.org,
	Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH v5 18/26] arm64: vdso32: Code clean up
Message-ID: <20200321120635.GA3052@mbp>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
 <20200320145351.32292-19-vincenzo.frascino@arm.com>
 <158474646622.125146.3263940499372231797@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <158474646622.125146.3263940499372231797@swboyd.mtv.corp.google.com>
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

On Fri, Mar 20, 2020 at 04:21:06PM -0700, Stephen Boyd wrote:
> Quoting Vincenzo Frascino (2020-03-20 07:53:43)
> > The compat vdso library had some checks that are not anymore relevant.
> 
> Can we get the information on why they aren't relevant anymore in the
> commit text? I'd rather not find this commit three years from now and
> have no idea why it was applied.

Good point. But I'd rather say that the original reason for adding them
was bogus (ABI compatibility between arm64 compat and arm32, when arm32
vdso never got them).

There may be some (very hard to justify) reason to add them if we want
compatibility between vdso and syscall fallback on addresses greater
than TASK_SIZE. The vdso code generates a SIGSEGV or SIGBUS while the
syscall returns -EFAULT. However, you'd have similar mismatch on
unmapped addresses below TASK_SIZE which cannot be handled by the vdso
(not a simple comparison).

I think the vdsotest code should be adjusted accordingly.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200321120635.GA3052%40mbp.
