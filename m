Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBR4IXXZQKGQEY33A6SI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAA81867AF
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 10:18:00 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id b25sf6332862lfi.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 02:18:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584350280; cv=pass;
        d=google.com; s=arc-20160816;
        b=iDIaKh2sGm+xAHWTJn0wuGnOTM3AZB272EHNgzjb/EzGDbZpuGDNuKX8XX6nrCWLbo
         EvloBIi7l79dL+ARygRUW34Uv8Vf0PnoRI70DkAs95gQKs5awRQwiTyYbLR4ryDOa3LI
         JyWIfpq4t9Y1+rX60Oybv1kL17M8WVNbxeAwZ8Cw7MYgbQGTzZl8D+q1l2yH22rCBb/Z
         Vw1Sx+asHR8JQt/zBq1HMxyjEuD+Q+rH9NiPXa2VeiHX0isX4J5zyuqsAgvjxl2U/UQC
         7NqIE9WJYqVjs1DRvj6ABJloheqq+7Dk96GDzOHOfsMunk9zj1Y4RGw+EydCVisSj4zS
         qEsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=jpNtXb87L7/YfF7JDabwJXLAwLRC2wqbTxw1jqLtSJY=;
        b=xucv/bXcZAsfXZuhtIShaVdJwFL5cid0wzaLG8Z+0u51j+jogA5ejl+sD9voL4Nb/i
         0vSD0R75PN+NUNOy4P65yCVNKbXqpVtSiBr5HZrG7yn/m7PVspTznp94h/rAtADOL/No
         GgbLduGVZOiGBq+iN/8xI6TZAo7WaFyUW4vKdbkGuKYjuPdi4XXmfDn/JuCQusnkmU6w
         JOyVEhyPRb+c5rIyaDGevF2pAIyJxli03LEW0b3ki13Wr7vL4UWlz65FQcmmQhM9U+TP
         mT9xGK7IRU/1fHkaqmUoFNpLTW7ID4KGt94GkbdS2LzDHiHX4h9ABAv8yIw0DYtcEJHc
         U+NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jpNtXb87L7/YfF7JDabwJXLAwLRC2wqbTxw1jqLtSJY=;
        b=dqOmzn2ugvEjxE2QL0/MRKxCwBgRFqC/CtN3vaxNUo9s384nAwSo0eD9DBABgtDAmf
         d1RjW2C6J+S80uSWW/BD1uP2OUbuLrRjvMx7Bo6tZa1pzz8i5pV5EfObGp4+FuUh7m7V
         HIeWoWCTQH/zcleT3ywswEsJW1fqTA/gftjpw2Nm0+IqDKldD8izWYT1yHK1aNiqkJdn
         sUkUFhRZH4O1uRy3906fT/ZZpdG0S9L8LqGSuJVimnUafnKkbt03R21ZxkXRLhQ5juZq
         2vU5ebsfPKcZ6uMzcWOKfx0LBrRbDDjcQz0ApdVaDlJOYWSOBitXHkuL4ec7hw/CM/hx
         MGPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jpNtXb87L7/YfF7JDabwJXLAwLRC2wqbTxw1jqLtSJY=;
        b=kebK7UmGtVoJbVc/HBZIXjg1zXHar7T4UGHNxAeJHPzTuncJHZ3hIXiAbpEwl01Z8F
         2M7sws7w6Qe/DXS+LYmFBQZXcB0d+FBkbQXknDXgIySDHhGoh1t75N+562ioZK+/hAdh
         CPZgQbICLH0FV8Nwga31NrUcWgHLD2WheUCA3rHAP8RGV0P2cIjCVJrTyvVyqZOHkuqK
         F869PC4VjJwf6fda4lhxVJKzD/lGLUdJdV/vv5qYGL67rxnLaSUB9YGKzW/C9ylfWrgT
         zJid3t5kODvjivxHyX9TRvfC0yACWg0on4LIqhIA9JtX5xqxPjtJIflFsWJN4DukHdHY
         8vAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1epgFpf9frwvFrw7Kj2cq5al4vYEFU/UW+9+pHeRm0ouevp8mN
	4KNrhmvsrJVjGfvAZFh6Dng=
X-Google-Smtp-Source: ADFU+vuOgvMiDmL2VlSM3k09wF+wqgoLoqzL+Xv6RXrm/n1bVeOkZsr5XS7GOfpZXHelOf8KauuZdQ==
X-Received: by 2002:ac2:46d9:: with SMTP id p25mr8265889lfo.174.1584350280050;
        Mon, 16 Mar 2020 02:18:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a8a:: with SMTP id p10ls269696lji.9.gmail; Mon, 16 Mar
 2020 02:17:59 -0700 (PDT)
X-Received: by 2002:a2e:90da:: with SMTP id o26mr9007700ljg.254.1584350279002;
        Mon, 16 Mar 2020 02:17:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584350278; cv=none;
        d=google.com; s=arc-20160816;
        b=gDR5Zuq1+Da5n0Oq5OigJZ0C0NjanU5BnJ1X/7zZcRg8NboH3ZLTLDjHLeB7ne0Zqk
         b7PIkMjOlubAuve7+ipHIs34BwyXNzPNJzDGgqCZ/9JwqkW0fcaBUX4QGJKgY8itkp1O
         CcXWdeX6x6NtDZwc92bhdVTHNJj1ol6F72cq88mJMkNcOp/jERkKyyj5ijaDdmCEVzuQ
         4MUXdX2qzKotMeH9AGIygvyeBn1XNVmhDJgtTzYgPHZxX0p7JGB+o2uOqOivUIAxyQdW
         WGDhZBt+u2D5q7GREbZI/WOJt0cn0JoCwpwzVC4f0uftlb5w6kcxmyuquRlLl1s9s2hy
         3iTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ezkJgk98sfTQl6o/BClPDwlqHeWRsnMbItuP7x4VN64=;
        b=KguvA0l15TIqD1LkINh7WxI9qrc2E9OksLQU6mNMM+QGBzHuZqYFpSL3d/A4GQnQit
         WR4LOKVp1CuMbmF38ZtDrJrFlOu4dOiAr+lxPcyihh9MBwykHeXCI0ouKFFggCDGIDCR
         V3/HzBEgZUoCZlS05LStRV79gUttOOXgmuq6Ard0ZJ9scrOVD2/t3YZf/F5qO69/rDb7
         nihWyJh00fOtB7ZNlUcIlF9SX4iRpSyJo3137L85GupairuWrS5awPWDtvpRn4JjQy5U
         3v+Q3/5bQ0AMBOa5wtRPReG7PMJvK1IJw9h2bITqIp8o7MkYs8r1s/mo8Vj4uPG518a8
         yyqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id a21si306799lff.3.2020.03.16.02.17.58
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 02:17:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 810021FB;
	Mon, 16 Mar 2020 02:17:57 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FAFE3F534;
	Mon, 16 Mar 2020 02:17:54 -0700 (PDT)
Date: Mon, 16 Mar 2020 09:17:47 +0000
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
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v3 26/26] arm64: vdso32: Enable Clang Compilation
Message-ID: <20200316091730.GB3005@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-27-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200313154345.56760-27-vincenzo.frascino@arm.com>
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

On Fri, Mar 13, 2020 at 03:43:45PM +0000, Vincenzo Frascino wrote:
> Enable Clang Compilation for the vdso32 library.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316091730.GB3005%40mbp.
