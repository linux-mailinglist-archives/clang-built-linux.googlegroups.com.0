Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBVWK2OBAMGQEK4S6MUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id F31113423C1
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 18:54:31 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id b20sf2039897pgs.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 10:54:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616176470; cv=pass;
        d=google.com; s=arc-20160816;
        b=dOs40PrZBQ+xclf0D1bIO4OzexNU2Jwtudz1o9W/pv1y/GY9rS5GG8iO6XDRqtfF23
         5seDcKqdsIFaO4ucMI4jUIAjpqiXdVA6C3OQRMUHLIND422r/Py0qdbOHBmSesGMl67H
         +IYmLkS7BeUOcoVSB3SBYLkPOFCwS5OuNzUJ22gP3Y3K58g9M45+noWD89psUDYbwG0a
         54nBrv8p2PhiCv7yzO0vpYiIlE1w9Eo7WOyZtISPMlTuqgHP/9BUSine4ZesHMgQVxtG
         Lh6vLwn9nD4NXsdjIASdpuwkSNKY2sW8Sx0LZuD43i1pze3ItKVQYwds8Qwr2J1LgcMH
         gujg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=7lVdIlw2/JcQ8ujDLCBs22I3XOX3gD/qp7mnHEeK7bY=;
        b=AZi4Jxoqkw+UJZWNuwFk7dJk2avrt3PauEYtEyjixXygOKLzykd8D9abe81t0vAjmm
         ItEnz4Dmb6wcGwcGqCA6U013H3EFBq0CCV5EejDL5GZzaS5/AP2dIaeXwlk5drkwM+Ac
         jH3FLOAyv6oZhYT2h0YLhI0QsbLfChXlXDnbsDtM3LyPCMUSU3hgSNJPTHzMe3nQGuWW
         7I/N2nOZ3mUyB7MESbJ3ZasoEWmuxmhzzt+lDO+Pnt7qg4ZKbnh3bqKQl0FdilSj1oLA
         MIs5dRPUPkuWrp3xTesIZyf8bLpDHnbEVRZBsVSYHzpcszISZkJKiOkwzX0lcQ8ZMuxm
         Mdeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7lVdIlw2/JcQ8ujDLCBs22I3XOX3gD/qp7mnHEeK7bY=;
        b=RieJAoDCdx1cgmOg/TX9uF9S+tntwE9bGwg1cuLn1M/JZORG3cftyH9c8W7IPEBEgY
         lkRrEJfb9IHgsn16YM3/oFJi+jwDD3Kv1YZM3obRzoeBlyyhBwdIdma70MLUt3DVraqg
         fkSwSSkDvd/NEVUtrmGeQBVItDDZwsGetO70R/A1fQvYhT9fud+Yo37ZeJTOy373DMfu
         4HatXoam8vbgjx7K1DWIdCXC8lDN38SQujWVysD4ubQjKYs3+7nJXB84udMfxoOV+a4T
         kgnFapROqTi8hidaw7FmlWU05Z4Acl420nkCWUvyk79ZyiZp75VbK5durInnRt0rOGYE
         rKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7lVdIlw2/JcQ8ujDLCBs22I3XOX3gD/qp7mnHEeK7bY=;
        b=pvQnTTy3fZhyztSSeSxISwnZqeFEYj+/K/oEQkmhc4692m27u3h0fOgmiQleIH6WTq
         rutZxPECAIu/Wm2IygwBfyDWq7G8GMSTY8paiK2U1A4vutbJfJl0bbb7u4HJk2HwrkbA
         9togZjZ7UnQu2PCjMGQ0oNrr+35Qn1JxfHgXvOS9+GWpFGBUQ/sWyRE2pTwTXDGuBgLC
         AcHErJwryK3pLRcmKLhNdobjoEbcOr/VaPIB3ROTuoxIpLXCNAXnh/civyVMweOc3rVk
         EjvLofEJZGhR+T4MdkA8/DI20M4nE1WpKANdtqOTZsBZITKtgdDhhg9Wv7cGFQ2xa6bq
         u+jg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DdcTzd+vpqTMR0T7cX12zycZUNzdPiwUIE+wRGwHmmH38YAFN
	C3KMBw6zpHPJxN6GIYFT5Xo=
X-Google-Smtp-Source: ABdhPJyEhaY94IvAcAuzDrzREzGUvdkFEDiPp3Btot/2BAp3ndf9uRI+q/94QY4DUWwQzKFSfhxOpw==
X-Received: by 2002:a63:4d0a:: with SMTP id a10mr12411181pgb.177.1616176470695;
        Fri, 19 Mar 2021 10:54:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a507:: with SMTP id s7ls3248229plq.3.gmail; Fri, 19
 Mar 2021 10:54:30 -0700 (PDT)
X-Received: by 2002:a17:90b:310b:: with SMTP id gc11mr10856401pjb.186.1616176470052;
        Fri, 19 Mar 2021 10:54:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616176470; cv=none;
        d=google.com; s=arc-20160816;
        b=iqpatfVbp0AcxPGu8tuWoT2zYsCKqJdMrdcyLgOmwxrVFSmg+stcFphG8pfJbPvOKw
         xNA4SLqysdlbJGODwyU9ubVzJF606ERrby95lSWV9SfS2aCk7CSOHMFL4ZYSQ6CuTJOm
         8O3H/AVBQYsZeg9aWNaBb71nIKuK6uS7aJwBoa7jobOteDKTWcYfr0KmMuqhHRbxpgQH
         DRH8DGzmmmOsV41f7EtFtiRlf6R7ScBCFKP5INHFzzHcXLjXe1ihHlHTRs8n5rAc7Ods
         iPzmxAtyCAO6VsLuwXpcILlI7GoXuANnRsDq6qop5qBnVASUSXmkBD/4r5rsteHsVc2x
         BG1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=R55LgKBQwRw6IQWJpI6ZBYwKcExHy6KXb1gP3n58fS4=;
        b=m9lemtJtmkN1ARE0SP6x1ZUEw6mKQQDSKeHF3QCVVWaobecXawhHvfLufLmN2S9nwP
         0xXhKweMV5rWsKBoKxFE39iwMZoEAyUNz3RrQZ2g3wQEelvprLkKV+SdzpL9PQCqgaV4
         MFR0UznMSYNBJjUwPwpjGT4z5z7h8r9MgB7P7wE0rbHdXxjMJFo6QyoUFevAUeTbBIUo
         +ye7ZD+NJAgYDNoGEzYhycJMjWvXUsJQdU37j6gA9E2WRdn9Zcby5Ji2mD0kT8WffPOH
         RZz+r3cyl4XqGr9YOAT8VEwnFxNeZ4v95KMu1MwWyLoAuaEsi8SAI9L198puFywQeubF
         Y+8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=cmarinas@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r23si321066pfr.6.2021.03.19.10.54.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 10:54:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BD2961986;
	Fri, 19 Mar 2021 17:54:26 +0000 (UTC)
Date: Fri, 19 Mar 2021 17:54:23 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Linux-Next Mailing List <linux-next@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	lkft-triage@lists.linaro.org, glittao@gmail.com,
	Marco Elver <elver@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	David Rientjes <rientjes@google.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Will Deacon <will@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: arm64: compiler_types.h:320:38: error: call to
 __compiletime_assert_417
Message-ID: <20210319175423.GE6832@arm.com>
References: <CA+G9fYu-t_JwoBVXKhiDUY-FRdX3F3LgbDw9bFeiuciwC70TaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYu-t_JwoBVXKhiDUY-FRdX3F3LgbDw9bFeiuciwC70TaQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of cmarinas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=cmarinas@kernel.org;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=arm.com
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

On Fri, Mar 19, 2021 at 08:49:07PM +0530, Naresh Kamboju wrote:
> [This email landed to Spam for some reason, sending it again with modified
> subject]
> 
> While building arm64 kernel modules the following kernel warnings /
> errors noticed on linux next 20210318 tag the gcc version is 7.3.0.
> Build PASS with gcc-8, gcc-9 and gcc-10.
> 
>  In file included from <command-line>:0:0:
>  In function 'resiliency_test',
>      inlined from 'test_slub_init' at   lib/test_slub.c:120:2:
>    include/linux/compiler_types.h:320:38: error: call to
> '__compiletime_assert_417' declared with attribute error: BUILD_BUG_ON
> failed: KMALLOC_MIN_SIZE > 16 | KMALLOC_SHIFT_HIGH < 10

KMALLOC_MIN_SIZE is 128 on arm64, so commit 1a58eef5def9 ("selftests:
add a kselftest for SLUB debugging functionality") breaks the build. The
test was previously in mm/slub.c hidden behind macro that no-one
enabled.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319175423.GE6832%40arm.com.
