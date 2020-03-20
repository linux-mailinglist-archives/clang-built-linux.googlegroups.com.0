Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBRVZ2PZQKGQE5PQ3LJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4285218D26B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 16:09:59 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id e10sf995884wru.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 08:09:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716999; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hi1L6AixpU7skmPMYtUw8Xv6kAQHxb6ACYTtZv8SYKcCIlIsh1AFHJc9iZNaBo8Y3P
         Xn+VMJwQusr1CqfQ5a0pT0o66kLrJTgGVYXvswl+qWCKdRV1gGswkdZhfNPiKjB6MRHG
         rV5D5UJKck+CKOVQm8FWKThMp7+rRZB8kNZ3LDyGCv7fBTqB8mSdp9FSFn/ABI/uyTyG
         R328oFBFxPWTS8wfV4Ic9hUSgmRp4DRUTNfn5r70qekIpY2Ftgyu7DeSPh11dZqtulcQ
         QfubXQ3GA8tPL2EvGs4b+rdiv8IdXx0KLUxyrMJq/L00T0MjrM6rSyQ/JwZb4gRwhZHb
         ylxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yrwayooUgU7FWSHhkNQ3AK3V36hp+CTNRlMdOSyqaC8=;
        b=RlnFAnte2dpeymOAXjZrAVBUEfL60NUOHGa6qm9cSfB8CtxljJmkvHgjtjWtwi5VuC
         MC0uLWtv33Td5GqTzfRYnc/RX+ePnL+vWmtI9R9381Q1vlwG/6ZX/LoynXQ/ul0ArWtc
         xj1OhFr4IhPz9zayprCNXL8TDQpvCyNJW0vi4X2a1qsxGi17yirxYVA+yBPRhM5d/FGn
         0qO9bCVntXaRMNvTElyMVJ2/md1ngojA+i/cpcC1Sb4AoBE1bG7T0Uv1fa/osFzUO2+o
         Rp378dm7Qd1z05jOSdfGrfRqT8aoh/LD3AIjqXlBk3z/rT4x3/1SrSLo2oTTGoxXuz4Y
         dt7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yrwayooUgU7FWSHhkNQ3AK3V36hp+CTNRlMdOSyqaC8=;
        b=M/nprhDP++scoUFBNBGAOnrxwJRM+Fpk/aK3tEhMfeQG9kjs9ubqbhLHdcUjQg1Faj
         OntsmT2Pw+CAsWHGXzWimNMVrbPWT8bG2ABGgJRXhV45JOf9tTscBGQUJVsCbtplzAhR
         Ys0c6scQkZM5a3ygM7qos/OqP/7seBlfI/9rsxM5NhjOceVT4OBarQCSIlZYONO2ghxc
         On9QuYU27QRsNuKO0ZkLYbDjngj/gzGvmHq5CEMBS8bON+yatWLhxFZ0K+A3TK2Hi+Ws
         YWuBLUrPT2NdvAkFTLBrYQmFE2EFfYAwlUSfTpOE3P3w1tn5L//iZtbmOtV+AfdqYGhc
         0CzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yrwayooUgU7FWSHhkNQ3AK3V36hp+CTNRlMdOSyqaC8=;
        b=ow4yxwIyJN63ZHKM2jsX0lPhrn+ysyRAUVzETCpy/hFqkGbBIfS5HjlCeAOfjLhBIM
         NNpgEcRnhMMQ3PQta/iDyOCl2MJSzg0tRNTU9A1yLKzr1VPlQiVQTUTUBQhVMPb7aacy
         LyhGn3EpnEzsKMYaSgtDXf4Vn4TreR1WBTFJp55o0AB96ZuK36DJKq2GwMl59+04hi/b
         739Ez+SV9a+rPe5+xeDvYXtTb/r+z+IQGOr851pqTW3KFODWH0w83rDGUEa3xoSA91uP
         0OZQnOHrwCt3gyE61EP47rtLQdp+fZS30flefDZ6YmBrl5rzSWQThs6SFWu8gyrbeQ1b
         XzRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2YAhj9VeT4yeLsV34IeXm/NWjemAMTiLHc/B+bJENjzDxSSczY
	u20ylOFpVpoL6WgsAygXwXo=
X-Google-Smtp-Source: ADFU+vtBLzwIy7c399S22kyU8JUJXch+HKM5Lcpi9u6Zk40KbhSFbpWT2dhIFzoXXW1gw1qhmTNuJw==
X-Received: by 2002:a7b:cf03:: with SMTP id l3mr10957004wmg.139.1584716998946;
        Fri, 20 Mar 2020 08:09:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls2650256wrr.4.gmail; Fri, 20 Mar
 2020 08:09:58 -0700 (PDT)
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr12096846wrq.180.1584716998365;
        Fri, 20 Mar 2020 08:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716998; cv=none;
        d=google.com; s=arc-20160816;
        b=FFiKFbD48NPnCwnQRA3nAXvenIxAM/EIw01f5IIQSvc4biENncqe8OSBThd6pJZqak
         sSewGdCgN9f/ZqwuVKQb65aZ1R2dekJ/6thSk5c4P2h7elI7hy30jIbGWbFgs5KGs9MW
         yv17kZ47Fdeo0VCc8V+hEl1mPClnGDn9vsnTavlHX/hmlQ2wUb9yx1GQ5bZX4H+E/paX
         5uVaGncRtKbCsPOidIyU++Pc5fXL0TVh/Xi/JSp2GohU9Y8FgHONHogr/Zd9E1yFBA3e
         ROzyDl+jTwnM4rYY0UhBIslulUkeIhv1oNzvZSxWKyikSpcgqZP+5BItX/BfgAENG9p9
         BqUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=3T0RGEDHjF7yv4+UGam15tZLl2m4wBhVjgC+7qgX6Pk=;
        b=t3rFy6MlHQQfkx2xZiB+9MrtJAc23ZClKiFbTo5jc4fE4tqYZfFxGT8FIZrUXs5Hh+
         anhwhms5N/E/WtKhcKjP/SpImrd0MvSR02xOVcuxKsx3B14bEWgy0y1TjHvPG4YnTNQP
         nDT94nkZFieQW/Vk9FnIUBDhkgIgVPBmBm2CZCuZZtTIN3qCZNYuPK/3Q61haxyOT0OW
         NwqRKO9bP3vBE5HimKpM1slpGqV4v3vS1ObFxO8Nep0lXRHD33rh0hDeDcj3/Wvwhfeb
         PuGE5igEs0xEGuwjsZuuzRIsd3PVwAA5sDRNvDROdvizaGG5H2TIT82P0B+NwI1pbi6w
         SPmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si352390wml.0.2020.03.20.08.09.58
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 08:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 777F31FB;
	Fri, 20 Mar 2020 08:09:57 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 54EC03F792;
	Fri, 20 Mar 2020 08:09:55 -0700 (PDT)
Date: Fri, 20 Mar 2020 15:09:52 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: will@kernel.org, amit.kachhap@arm.com, Dave.Martin@arm.com,
	ardb@kernel.org, broonie@kernel.org, james.morse@arm.com,
	keescook@chromium.org, kristina.martsenko@arm.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	ramana.radhakrishnan@arm.com, suzuki.poulose@arm.com,
	vincenzo.frascino@arm.com, yamada.masahiro@socionext.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: Kconfig: verify binutils support for
 ARM64_PTR_AUTH
Message-ID: <20200320150952.GD29214@mbp>
References: <1584090304-18043-17-git-send-email-amit.kachhap@arm.com>
 <20200319181951.102662-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200319181951.102662-1-ndesaulniers@google.com>
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

On Thu, Mar 19, 2020 at 11:19:51AM -0700, Nick Desaulniers wrote:
> Clang relies on GNU as from binutils to assemble the Linux kernel,
> currently. A recent patch to enable the armv8.3-a extension for pointer
> authentication checked for compiler support of the relevant flags.
> Everything works with binutils 2.34+, but for older versions we observe
> assembler errors:
> 
> /tmp/vgettimeofday-36a54b.s: Assembler messages:
> /tmp/vgettimeofday-36a54b.s:40: Error: unknown pseudo-op: `.cfi_negate_ra_state'
> 
> When compiling with Clang, require the assembler to support
> .cfi_negate_ra_state directives, in order to support CONFIG_ARM64_PTR_AUTH.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/938
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Queued. Thanks.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320150952.GD29214%40mbp.
