Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBF4YSTWQKGQEIPF774A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 65505D6C4A
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 02:00:25 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id o11sf29035207iop.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 17:00:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571097624; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJFu7yEEBWwfd5y5ayPdcLxE3z0zrjvHWpAUDXuSUea/QfOdVTSpQDKrLb5qfwJCzh
         0Lx/RvY7rWZoiTVoJkWUbLl9v/1UQ1U4ZENcrlYOVmOUwRzc5UCdJtOMheSwGcxm2Qi5
         m0pJGfyMeIlM7lI7rDBdh9azTIz1U40zys45E8r95oYeM9PBR/MC6Vc5sMdjw9JpGctu
         TOrLtEOtE7dK+Jv9vO/ikPf47kCulqEIE5jviXgMBQ01Z/9qS4zjy71PkbimK2GZV2N+
         2szOh7nrg0qCvE26iN+3V0mQ/5jvyF4Dh4v3zhKKHp1/RfFkt/vwrGuTBIs+wanf9QSC
         zIug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=03rJH6w+vPU1sRakFlFD7qAiyuJs1NqJKEHPEDJ2mRE=;
        b=a5YRmxs9kdp2TtyOE+B2NoJnLSX/rEvJCfSZGwc68M72Rzn1W/FrxnLoppTvX42OIC
         0WU7/SK6SZ2cOYWJLBxAJMPJuJiZt1lQUNcrWRUjyJyV2YML/pUOvNUcetewpuK6tcr/
         fz6O4J6SZZO1STMbUC3WIIOXqgso4I6MrAzuKLqeWMszIPdZ22eU4yIeHywUhQfGkNdD
         Tr2A/vxp7ggzD+mKqJQOlzm4GYjU1PwHuu6z5Jrt2qXxFcT1YpBpAMEc/5OdU/r/Cue6
         PBDtJCi1L3tJpZWVH+rUeKZsdqHHTcltS3+J1xhpiAOF1M6mkzPchyhiKTrKdX/zPlQu
         Wuew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="clgcAkA/";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=03rJH6w+vPU1sRakFlFD7qAiyuJs1NqJKEHPEDJ2mRE=;
        b=kgjJeNmqVrF2Sie8Fko3k2/8iXbgjIUBhLkJBUuqY/txM0bo2AuEfmDuzccLPQgwAS
         h+mcjvemfCRa2mbCjy5WnEjFi22vhUfZVB7i6acOhP45hk3706DS/ecYaLY1FgBR56bO
         qXD+pMW7r06A5LPfHBOg8oXH1esOd3x+WyQiCFvVV1PLdvjvOmngb+7sXAAG8/k3iMeB
         711w8XUv+MWzCfSKYyIlTw8p0eMuLmIYIGomkqsdmTKF161n3G1i+OjvjESSOi1+dMtr
         MTEB2qO8aPOhbHwZM/RZ2vo8PyElT3EwjhyYbUVvL+9n0v080+SuObrhzXtBkIe2JwlZ
         eIYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=03rJH6w+vPU1sRakFlFD7qAiyuJs1NqJKEHPEDJ2mRE=;
        b=DdAmmGFhHAaW57K518lU2oU4B1l2Hn/cdDxZCfQTynjVhbCJILI0XGOkUm3or5k9q9
         5dYa3rsXhcAyjFEgjNmHbDNdIuxFrIgpdPwv0UCzA1JhwoUtzgtoK2pO4hnvWysdf9XD
         1Vd0rLblaH3/PPlkPppQAEPk+U4jt71fDulsL+fXLaDkezWryULLPzQ6JSLhahV4jgvX
         A/mAR6mdNQt0OVcK6Jf26Iq2xqp9q1m1MNRFNj7I0kFeIYjtNtbxlDguaMp7KhzF/P3I
         OM1YtjVCwEdtlvfp1aOuaklvQ7zxiF0n9Fr+FTg3fTCLWlG7IfxwtOaMrxAByQl5h+1d
         xCgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWtetidAgR8/V2MyWkNXqirp1h4Lx/1xFRxEcjLJXspAbVWPwUO
	Kgn3Cj7BGc9DJDdEMzllYG8=
X-Google-Smtp-Source: APXvYqzQaGxBIfvBqBw/Qr73YtCr8H//gNpbrmaWD6dy4bADNr+ThmqOMm3ILxSxCK/VBCuW/5cQKQ==
X-Received: by 2002:a02:a156:: with SMTP id m22mr12059684jah.62.1571097623615;
        Mon, 14 Oct 2019 17:00:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:37cd:: with SMTP id r196ls2280057jar.8.gmail; Mon, 14
 Oct 2019 17:00:23 -0700 (PDT)
X-Received: by 2002:a02:c7c9:: with SMTP id s9mr39435702jao.81.1571097623363;
        Mon, 14 Oct 2019 17:00:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571097623; cv=none;
        d=google.com; s=arc-20160816;
        b=Px7lRPKN515eu+elLRP/gc9b4RtcVYiyeTmekbPorspVqh08egP7K/YYEx7Ii6ThD8
         SATUlNSetz94cKg+iqNhcLQB79WaMlT2pZfmSLsp1otpwVR3K6PF29q8DAQZLr0ofhvp
         yEL5M+MOFlAVppLHlUYuWVpefxmbYoGqch1W6otF50yhu1YJpJNf5vt8gnYTm+JC8wfY
         gRbHa1FO6wRHyKpeUQY9sed2JojRD1j/sh8ToWXMfKrhAgkRs0ubUKhvWDlBV1pKAsl6
         5+l8Wo6q7KtserzH+IsRHT8aDWP5Uykcs0C/OEjTbPTsV8zuFm631xkDxG1LFeqys+d4
         a26g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vpnMhhZr3OKTqZfefYVl78IkkwNVqoozpu71PGdoN0o=;
        b=yCFvnzg5xKjhppSh66d3a3kwwCQVTfpn+WsA4mbKGO+CMWr9fUkRQBD2epn2yuDN1G
         emrBdoUTvl2+FX9iJvQPnnxSg0Rn/mPiA+Xt2F6Zq4GLE9pTOx9bq0+HkYaCmmg6h/fe
         qJdd80hAOlnHfxGTtGWvQmsDfoYYVvnjlW8uoREOC8WqpG3jkwmTDgdzZQG4DZrOEZKn
         XF7ZCUSDvGHaqwcZxaGwUC3xWDb7uJw65f2jzNauWw19Hrkxl3WL+oTNTXBm80NPdnGC
         0A/4HuZU4XJO/njPXai0mvL+UP4bv8FAkQO5qtyxd8vs4tiQWtHqdQr5M8zJ0hk1xE1O
         pgfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="clgcAkA/";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s5si336683iol.1.2019.10.14.17.00.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Oct 2019 17:00:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0933521835;
	Tue, 15 Oct 2019 00:00:20 +0000 (UTC)
Date: Tue, 15 Oct 2019 01:00:18 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
Message-ID: <20191015000017.66jkcya6zzbi7qqc@willie-the-truck>
References: <20191007211418.30321-1-samitolvanen@google.com>
 <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
 <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="clgcAkA/";       spf=pass
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

On Mon, Oct 07, 2019 at 04:47:20PM -0700, Sami Tolvanen wrote:
> On Mon, Oct 7, 2019 at 2:34 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > Should the definition of the ALTERNATIVE macro
> > (arch/arm64/include/asm/alternative.h#L295) also be updated in this
> > patch to not pass `1` as the final parameter?
> 
> No, that's the default value for cfg in case the caller omits the
> parameter, and it's still needed.
> 
> > I get one error on linux-next that looks related:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
> > -j71 arch/arm64/kvm/
> > ...
> 
> This patch only touches the inline assembly version (i.e. when
> compiling without -no-integrated-as), while with AS=clang you are
> using clang also for stand-alone assembly code. I believe some
> additional work is needed before we can do that.

Is there any benefit from supporting '-no-integrated-as' but not 'AS=clang'?
afaict, you have to hack the top-level Makefile for that.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191015000017.66jkcya6zzbi7qqc%40willie-the-truck.
