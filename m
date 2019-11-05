Return-Path: <clang-built-linux+bncBDV37XP3XYDRB56AQ7XAKGQEBTFJQLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 17603F0738
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 21:50:00 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id x17sf3698013ljd.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 12:50:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572986999; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWkQJwHbBuSi8ku4UIHvOilG8jHgW6KE6RAYHEv8xJKaphlG8gRqyGFCwVjBOviDdM
         6v0Bi0kfo1LfaGAvLuXBOTbGac5F6H3aybDw3M9C7i24rYBwMh/mQnRenTI8gvYaj0XZ
         y+em5trWuBpL6xupZzTf9GlqIXPjpVNIca69s5n/tvOBWviN27t2XzKAcYyzXVe4LHou
         WAVCk+jysCYYU8cQkO67rIm0DwA3aBqq1pejkC7g6/SO3f3E08NZI5Vp6RbO6XIq1yG1
         TmQkoTLvYrzgmuSiNENCL7yBMYD0kKoFaPtygQ1nBMAdNrSy4XCoKDi0dsRCY9Z6c1ar
         yWuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zsd1glavaXASofvhg/cNYVcILA+qgERO+YuF3cUP/Bc=;
        b=uqPG1grfxefmXiFvqJ90u0/+HiKhAuZA1HiyQHkHJz23v0oDnsAO2Vy5RAS9iSHtVu
         PLslPEuOLIkfnB73q+9pYOD5ehryfdtSqN5DVTfoJR03MiZpKlddrSFwQWNd00+8J83b
         b+VGD7m3tS2VM65XtmvVVL5hVfIM9eY/NOF9vy24ufQRJi3jkQ9JmtaOOX67ninqOUr4
         Iy5bID87b2ArS57VD9tCZGFo79QlbInqNdbssB1rwyI1NachH1zUHyM9KiF0RpcSi7ed
         eiRPlyhBL6W3mFohP3yOJ9Sr7gVvNwdXXdhER+yeEoxEgndeE+mPBs8uV6TejQL4B9Du
         Z0AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zsd1glavaXASofvhg/cNYVcILA+qgERO+YuF3cUP/Bc=;
        b=cdBrbPXjXGaPoaI2CfnS9ZwK5ScCKE11KXK75cK9xzL327YMS6gBPM5Ekw/TKuuuzm
         26Z5b8G4rbCsqcOWJGJiY5vhRlvanIKty9Ie18mtpZWTNdSNhpxWmn6r7ObOhEimZlAG
         LMPAKxywbKQXv8plFzsTVOUNLfuplyhTmv10OBEWz9yHqRA78xkwO6DlHhe8XELnNhBO
         4FHu+du6j6EsqkK7XdcL5Covd41m74y13Nkz3pJfmrSJgTcsRDB0RL3grH/aXdlfyIHY
         NiPOodl5dmAWJ/Izs3WsYerge/RvOmIpKZiiCVIcvY21MYysQBmi0qsoV7XW4Buab1im
         +ACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zsd1glavaXASofvhg/cNYVcILA+qgERO+YuF3cUP/Bc=;
        b=ROBjxuzjAWgEwwVj6L7K2EP+pFvRbFcVxZcIr9F7l1JY0E0Os0GB4JTEBbgQP8yGok
         59l24fmp2OqbolOYJrp6UB8Wxj01yQ4rdt3fJ2UOZXQTo0v8qNY5X4PgMG0eK2yhGnuw
         PAHFCAmOMBeD9L05Kdv5bQIuUqs6xNHdl9m7Oie3k00N+vBzaYzNdOHyWJtcNhvNwywO
         RwV2BCHa1AzpLEd11GkVcZR2LtIU+4x9OdYK0TWbH+IKZL+b0vlpsEGbP/XG9LCV3Q8y
         QZrySYc/jnp69Rs8JMih7EEGFkyyxHUxVuoSlqbo/yqCMPswsophNtJx+0vcMqT7sRKW
         Pblw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXRfIBAMxFLc14Cghz8wXg3zBBeenbpQO78MqGSZ2X/FOQuhFhX
	9r1SdF7XvGapWc2xVZiS75Q=
X-Google-Smtp-Source: APXvYqw2JJis5i6F9Zk+6ONpJKXZs4hXhp9tdt0H1AVDZjlj4ZSSMrkTVgHQeSvHYnbry/kaEtqH8g==
X-Received: by 2002:a2e:970a:: with SMTP id r10mr8805670lji.142.1572986999677;
        Tue, 05 Nov 2019 12:49:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2e01:: with SMTP id u1ls924191lju.12.gmail; Tue, 05 Nov
 2019 12:49:58 -0800 (PST)
X-Received: by 2002:a2e:7a05:: with SMTP id v5mr5111846ljc.39.1572986998904;
        Tue, 05 Nov 2019 12:49:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572986998; cv=none;
        d=google.com; s=arc-20160816;
        b=IBDTHvS/IzcNjt2hj+LOk9hnHxlsZyNGJok6kA9TMsBUmJ8GgGSmfUyERHrnwB/4Zc
         NNSZOXf4iLDWbmyxNSv8N3+n3CH51DOnfebqwXGWS9ufQ8h/eeumpE48u0lWhZEV7Zgx
         K+6T3pyXpyfm1cb3fmMHPBs2/tJprYmDR+vkRa4acVSKC9D9gDl7L93ITJ32+8s8z55Q
         nDtxoxhKQ92pM/eUWhVJArNKXLQhDSy5EHaZZ2/MkAMh7hUP3hqEWtEiH8xcXJvKfNCz
         p8RNVlGDjk/Q94Jc9O+sfR2g7cXL8OCwQVQuX1DR7lrEkq41i55oW24Ed4tdhE5KikUu
         9wkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Tv31pLwVHFJyy3TUZMQ/vDmJ8BgCr4RBZFLf8nQZGlo=;
        b=dvqye5Pz+pokPCCRFkj0mqoOraQLBwxUeOQsEqljMWeiosMMNe7d9oFSDy9fhfIHDO
         RSNcL83gW/jwrWsysW0AW1CE52nr88X83UH75IMsT39Yk+zkB1TxmlNfyhvsmjFHdnvs
         uLqiJkgpkWD2+zQmTj64PT1QU3Euw3Z6l9wvDQQKKm+w+NwmsGF+gK1LhKVn3G3LrRL+
         ZwLzXsZZmB3OtkOslnO4QhLdlbvX5SB8vs9rni7T2SOxhJw0mUIigxAKN34NCAFSPgOQ
         CEnlOS+LUhN3h9YoqTXWAUvwmTFxGZij7qIBr2W5f7TP4EQYYxqIABsH5Vd3jeA9KCXw
         L1lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id k20si678758ljg.0.2019.11.05.12.49.58
        for <clang-built-linux@googlegroups.com>;
        Tue, 05 Nov 2019 12:49:58 -0800 (PST)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DEAD111B3;
	Tue,  5 Nov 2019 12:49:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9AD203FB7F;
	Tue,  5 Nov 2019 01:04:38 -0800 (PST)
Date: Tue, 5 Nov 2019 09:04:26 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>,
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
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 10/17] arm64: disable kretprobes with SCS
Message-ID: <20191105090426.GA4743@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-11-samitolvanen@google.com>
 <20191104170454.GA2024@lakrids.cambridge.arm.com>
 <CABCJKue=yZqe23DYg3_WyiSKhxXS+GXe+3skhvYon4ytkfH+XA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKue=yZqe23DYg3_WyiSKhxXS+GXe+3skhvYon4ytkfH+XA@mail.gmail.com>
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

On Mon, Nov 04, 2019 at 03:42:09PM -0800, Sami Tolvanen wrote:
> On Mon, Nov 4, 2019 at 9:05 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > I'm a bit confused as to why that's the case -- could you please
> > elaborate on how this is incompatible?
> >
> > IIUC kretrobes works by patching the function entry point with a BRK, so
> > that it can modify the LR _before_ it is saved to the stack. I don't see
> > how SCS affects that.
> 
> You're correct. While this may not be optimal for reducing attack
> surface, I just tested this to confirm that there's no functional
> conflict. I'll drop this and related patches from v5.

Great; thanks for confirming!

Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105090426.GA4743%40lakrids.cambridge.arm.com.
