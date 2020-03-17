Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBYU4YTZQKGQEEWBECGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFD5188C92
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 18:52:34 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id a13sf55796wme.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 10:52:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584467554; cv=pass;
        d=google.com; s=arc-20160816;
        b=P8VS+njT/bN2k1naVzOuC/7o9iJ0srb/H/MhPo7Z/Shq/mpAm6mRe2kOkqDZWgYVGN
         WCrBhIfHGNi/13CYYHuw0vkCAIE/ff7T6t46pnZ6TaheO76YmW4VAb3jPNO7yPqlSB6k
         UDIQUg9OOnYBwMCeYiujSVfm0bchYT3R7/hOsEXedt/7IWwirju0QR4ZnNd/k6ijmere
         vrSsdICQv+gYz5mPrl6ySoYHKOzrmhmG/7+wi6CwYl6vLnxF7xjcDlxQbWQEAeD2lcn5
         fl9eVP/EzQnktavHqQ0buOvAvtD7AkcBFnZcuIuhtYG1p41P1+3c4+Lmhy/66hBeoOgX
         mzIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AyYxaqBE1qw/0SpYida2no6sUThWRfSE5FQhZa76Puw=;
        b=Eoo552CKAGz/J5otNvS5OwSONJBi99LnJFit89tG3Ek3KtjCnaRCCx+ngoita5T+g6
         PVMxFPbNyZxKuRe/wgQs1zZxWK8AK4SZ6On0Vo1Jt2mlXg5hIRoD6dRPPw9ly1AAaeeF
         ksMn4lpYKHX+j/lYR25gfB3qBVQBYSUP7U67pxwmUZDLsaid/QZk08qqvlfPiWHDIDLv
         YHn7bmBTPmMYjWto9ks5Y328BKLdjMMEyWbKq6U98+XvSn/AVwJmLiD0WNYY+tO0wiVA
         5qNZUibT/0VY485t2KdEjQTnIXZwTUe9oUYM4XzMIkPj8vqXVozXt/QHmKhN1jCjezR1
         k6MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AyYxaqBE1qw/0SpYida2no6sUThWRfSE5FQhZa76Puw=;
        b=grgsmxJ2Wq5Y7DEMgKw5zZ+nHMnjSAjcC3IwLvM85kV5DDQ24DW1kB/FsmhQgU8h4p
         lx6gYtZZzambv9o9ABYkEzvyBvM7lUX5fJ9VRnl/9+zNinofWDf7CowR6s24m8O2CZBu
         P9pNvEXB4VeF7svYX1JrJyy+3m5oQHSHWB6+B/4R6GDLXa+K68GByngIX9CfvT36btdg
         s7oI4yuKSy6tc6P0EDvLwjy23RDecu8FvVhybEnF0RJ+dIg8KpqC2LkMdfYxZfvxORC8
         +ifGAWqOWbDEEHJWpjsgWuBVf5LZqTUcKq2r4ERo6zwepjK/IxRuX3yFWzoZ2tgeemJ+
         FWJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AyYxaqBE1qw/0SpYida2no6sUThWRfSE5FQhZa76Puw=;
        b=kcoMgeI1hZjmhZQtfl4b3HrcIN857L1XOAbM0AJySvM8fGyftazJ5dWCBYInJpTo3W
         3y5UBDUvjzTCeKEj+J7Ql/T366tlXFwqDWX0AsHAQo7wXUmsbjZtxdvp8ld+Iab0p+7q
         HmxEQVABErVOcJIfkSGm6kuuOZCwd5TAFYTipoVGBUV195FcTL5O3TKQ1ve8p3q1XQAS
         9anzPaUziOb0RecidXblOi4nNWxuYQZ4x17GWFJ/bGVi5Aw1hSn//JYLvQRhtSJT4Rx7
         slPGypNS53Ix2HJU+xzj6MtfTAFWoI20WXfmKO5X2woMdENgdxM2HUzIXMtCN+3WnDR3
         stJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3R/WjKdaxjNiwPYPqG65LOWa8OoHEL6uZlTpyLAu7+ZXnABwZY
	GKWPRhStr6RBks9p/pbrwnE=
X-Google-Smtp-Source: ADFU+vsB+7gUCKQBrpF92AdkMM9SdZv/Sumb5Uu/6hTIGxH+K3HizNgzTwnr4rrjSIc7xs3zUXESoA==
X-Received: by 2002:a1c:156:: with SMTP id 83mr163666wmb.151.1584467554160;
        Tue, 17 Mar 2020 10:52:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls142872wmf.2.gmail; Tue, 17 Mar
 2020 10:52:33 -0700 (PDT)
X-Received: by 2002:a1c:5fc5:: with SMTP id t188mr209466wmb.110.1584467553533;
        Tue, 17 Mar 2020 10:52:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584467553; cv=none;
        d=google.com; s=arc-20160816;
        b=cpxc/pOe51Hi31kD0dKS1AZT5j2PcXRzZqSm//Z1u41zOgx1SRU4IsoPRR9bwCRYPk
         hSYwjjgOmr7PSAVPws2A60q5o6oBQ1X0+r4nM3aK8vWvzbw1WguO8XdX/qUb6bj5OPCl
         J7FIHMmL+YAkF9s7p/vwGBiVvPhz54yAslYW8P1dtvcgGbKUT2EG+pLzy1xWgtbRImdI
         vJyAY2+0Rh8teWuutzvrcCHYPPs3ha4Qotu4CyIRO0VIz8baTt09UbAtWVaQ3Dnr+TD2
         eTsiAWCIbD9j+GPKaL4IG2Y8VYqbWgXGlGiyj8qNgduPhaX8nkR7YPXLyXXzeBoimSRZ
         vmrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=rqVAe3ppFdC8StBm8IFkBYe26NJdkaM2gIBoVvH/9Ds=;
        b=FWSdJe21usxcrQ/4gIJQd54vQGrZ1S7s5itqcNho5GsvNhxHHRAHWGwUrXochVDczk
         dBVoeiF7LYeUXtdWnDlTodp2hs7RtV/CxpDdxI+zzPJJJsJ4CRPkivbdq37JwUDoDipJ
         BVps+/dDwyPz/9Fw9u+jhAy5LC2zuttxwfVYvz47FYKBqhXrdd2VmUZUxOABloNeRLBS
         Qjfeewi7No2XZsVaVaPA4qHz4HUyLy3qC6EYrwc5Y/xiiEppmXEuAOTPN6IvVxtZs6fA
         s/9js1uUdJuVBNek6bn5n7GB2chP0igWai4wnnHAknrE91ra+QpFzlVa8bykqS5VU2Gb
         DjOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b5si161697wrv.5.2020.03.17.10.52.33
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 10:52:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6A8831B;
	Tue, 17 Mar 2020 10:52:32 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C112E3F67D;
	Tue, 17 Mar 2020 10:52:29 -0700 (PDT)
Date: Tue, 17 Mar 2020 17:52:27 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org, x86@kernel.org,
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
Subject: Re: [PATCH v4 19/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200317175227.GF632169@arrakis.emea.arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
 <20200317122220.30393-20-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200317122220.30393-20-vincenzo.frascino@arm.com>
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

On Tue, Mar 17, 2020 at 12:22:13PM +0000, Vincenzo Frascino wrote:
> The vDSO library should only include the necessary headers required for
> a userspace library (UAPI and a minimal set of kernel headers). To make
> this possible it is necessary to isolate from the kernel headers the
> common parts that are strictly necessary to build the library.
> 
> Introduce asm/vdso/processor.h to contain all the arm64 specific
> functions that are suitable for vDSO inclusion.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

This patch looks fine, though it depends on the previous discussion on
compat ABI compatibility.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317175227.GF632169%40arrakis.emea.arm.com.
