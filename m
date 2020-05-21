Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBKMGTL3AKGQELSNJ5AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D4E1DCE11
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 15:33:30 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id q16sf7415353qki.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 06:33:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590068009; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nt4qy/ZXKb1n0p9kHouGJ5u9zfGpyXG42oPIguvbd4ev2pkolZaQHMVZHGvRsQIoSc
         nPJewMd3U0T+n1qQFo8e9MWbDvjIPDsHwYPwdtRatnj/q0a8KwVdICmCBLEEAqVdrtdI
         t6qANQDGS4qXF2MbogvSfMOIXuRW66NI2amDhGmOyGm/VkZt0NZOVHseORaYbn57BRSw
         SHjq2vBGlHVNzApfU5pLAZw0btJAY5Z2HnyMVdFGvuX84DKEFiODS+dvpRwZo7pIhn/B
         Ts7mwVJB+fn4HPkOAxT6gAS7cPQJjctxiTzbZ6iEGg+DynZhkLj04GUPZmt2193Brjgy
         YDdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=RdtqUmzQkHiTauX0+NCGhi4WlVgkFyzjM1JZDVhX/ns=;
        b=lEveOZItDXGXJap7qTYIe0ehmgDZBBAJRLrNEu2JyhKMNT/LTiNz4yLF1OhyxPdLW6
         VhA/gjRY2GHQHoLaSLPYoqNLc11xBPq2UjtOcXRw07h1/ftGj56RT3djZy6pEK8ChkMK
         UVWvvJ6JMDqWydLCSdQdtbeiy6Z+Ae7H+ipbv6zR1vf/+R/7p1G2bdbIamCUFKEHTUdW
         RGZ9COV2fMW6OjqoWWex2F+CDLaGtCm1K9LcrNGi5DQJAgbHiflL/DZ+oCZwhT0vIZjq
         H864cLaXvvwwZcFyR8r/hSvPNYtfNfV3hGK2DHTHAjY99ZlxAuvlYfH4UIWlYu82OxFd
         QXCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="N/t0vsj3";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RdtqUmzQkHiTauX0+NCGhi4WlVgkFyzjM1JZDVhX/ns=;
        b=onjLlJQZBc1KR4RdDeUcjhV3vfoxPlD6mhOsSMKoQav625GmBwPX7lE8T7u40ZFDdA
         ozU5w7WkY/txzgbjZcUSHnMT33BQ6QgsWguR4JD/EuEMg8R/ca0Qvmm12yWqRQ4iruj9
         K2AOVxYOFwZ8DLC5+V1pv2SvTBNhrVOSzdlv8wxooLVDyCk2VAp4lN6AnvGhUElKqUkb
         bDiIRSi8DC0ZAGKUYoEivqrrITF/tqPyLIW+64UrnOMlLNZo5rA/wUPpBtcNXiPprUcm
         UTPDIPkj+Hy4UY2SjB2F4RY7eMUMk37TZeeT0QrKBkZZf9RsiSUXTutDsJmgG35/Ydnk
         1MVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RdtqUmzQkHiTauX0+NCGhi4WlVgkFyzjM1JZDVhX/ns=;
        b=kJyjh/2t4oAL6nfuSbBZNlmU87hobyTwC86Tyd4rMAWEE1Jo41rhO9kBNEuvPwVj/M
         qGbgW+CebD2E0JOUU3pSRpPk0lWzzNxYQ6zVetITyd6L0kmajpyOJq9QX0TjV4oe6k6/
         DdEBhygCWSR7eiyzbLl+50cKI3sSIdlc8nPEA3c0fg0Uze8plsrKgc66UBc36Fj8l5vT
         Aunp2CnF7+a1eYvSHiFGrNhx1ZNIOYTK7BWKUL3RcW0h1q+oO7LXYI/bRpmOmQUG0F9o
         ue4M9dUe0FKEWhL1AiZp7Ax6vRxUTBFfT1OKaUb9leT9rmwFKIRfyvwZfp5sV6YzmmBd
         /eHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53196X78djOBDyusZMaXqCYNsHU87pUg43BJj+SOLnGa05DlHJpP
	BruoLkz0I4Gaq0XGIx2B8bk=
X-Google-Smtp-Source: ABdhPJzkBBfgGNKRovY5nb6Xe9RzMiSSwCvtP0zbQWRDU+W5R8iFBmGJA9QyouEKOpqJn/QkBRbLZA==
X-Received: by 2002:a05:620a:53c:: with SMTP id h28mr9462361qkh.362.1590068009831;
        Thu, 21 May 2020 06:33:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2051:: with SMTP id d17ls1018169qka.11.gmail; Thu,
 21 May 2020 06:33:29 -0700 (PDT)
X-Received: by 2002:a37:9ecc:: with SMTP id h195mr9952953qke.312.1590068009499;
        Thu, 21 May 2020 06:33:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590068009; cv=none;
        d=google.com; s=arc-20160816;
        b=DNG27gDX6Q8w1UxeWTFm2BjiwZHeA/SoRruBDqjP6BEY3XGIwOdvPRCIx96W1Nm9a7
         aStE3fBCkeWuf7gOI+INeom8FPPM1Uf0amkA2lpinuyHs0DMCRKpx1wXFCjKLFISM/hA
         U6MumaGHx1EZyyhQPIFfQqYAT6oFjxL7ffkAcRTrcz2f0jaYcvAlfRYA6gPf5+l24xCQ
         RE6aKiTJ90VsNTSew2xcaFxx3tyAGRmg/q9Ikh83JipMUtnQtK6RY0kwMty0dT7ot8bO
         O8duP5GvAJMZQaM+DHnWlgPrCZT76tiri/RyE8UzBbLzoC+MoAD4g3ltEp5YHtu4xSFu
         iO1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Lv81cVo53b5m0z+cm3hv8P5md2jUOQ5atM6bB5aENx8=;
        b=mil98sKbYj2mDLnGCucZUzEwkS8mNwm1Uy78lxWihR7S0kh7NZJj+0sX0lVhSikWV/
         33fjr5qBYdNN6aEMpTzJvCwqRFDyqp88QzQQXK1N+w2bI5QN6np9X2bHjI1qsQUacjmX
         qsMBUZqfyF7rdV/GSFyyyhX4Xzwwl3p2GGNR4utaVjzp79cg7jYI07hXhK4M8JZqkP0U
         sXMPhHt/6QlCSfiFNh70k+qzZYbbuY+Zq4iPJZ03FGUrNBbO06LBBbwLYTJyH3W+CPoO
         IRqRrViDxQzNVLYTuK0t/76jNUmp/0dK6wBQvZD7nDFrOCo6rREoND4G8mUPQsu23/vj
         CfHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="N/t0vsj3";
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c186si394262qkb.7.2020.05.21.06.33.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 06:33:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A1F3B206BE;
	Thu, 21 May 2020 13:33:26 +0000 (UTC)
Date: Thu, 21 May 2020 14:33:23 +0100
From: Will Deacon <will@kernel.org>
To: Marco Elver <elver@google.com>
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com,
	andreyknvl@google.com, kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org,
	peterz@infradead.org, clang-built-linux@googlegroups.com,
	bp@alien8.de
Subject: Re: [PATCH -tip v2 07/11] kcsan: Update Documentation to change
 supported compilers
Message-ID: <20200521133322.GC6608@willie-the-truck>
References: <20200521110854.114437-1-elver@google.com>
 <20200521110854.114437-8-elver@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200521110854.114437-8-elver@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="N/t0vsj3";       spf=pass
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

On Thu, May 21, 2020 at 01:08:50PM +0200, Marco Elver wrote:
> Signed-off-by: Marco Elver <elver@google.com>
> ---
>  Documentation/dev-tools/kcsan.rst | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)

-ENOCOMMITMSG

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521133322.GC6608%40willie-the-truck.
