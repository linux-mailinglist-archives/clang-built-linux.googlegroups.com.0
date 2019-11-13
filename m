Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBIPCV7XAKGQEMZ2QJHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AE8FB024
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 13:03:47 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id q1sf1668745pgl.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 04:03:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573646626; cv=pass;
        d=google.com; s=arc-20160816;
        b=YK6hKXJ3Ql26UI/EITeUwTpI6jxx1d7/UOI3MMQfpNwfD07cPHQQtehc2NZWINKLrl
         5w7m2z74SteTPhta73mxG9t8QldZd2r4IY73O5t7gERrRtpunK/Xtdd0irk1nsd2HXeI
         q1kyLhzuLB9osn+W0w7UylHbT01mqP46uvnGn8XKmcExcihwySm7iN+z56uOsbf0Ftd7
         oDU00uM4sXTmiaNimEOZPGPABeXvCa3Tqrleb7/kCmVUyYadWr0/UwWTMBhfaYmV8v2t
         6S4Z0ZiQAxo8Cjf72ZmGeP+VsEute7Mo17h3wnVmZOdIDGb+V0ABYlKzZQVh1AiurRHi
         99bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=yjVI1Wl5B71IT5DcAlOknEwLYIfs2O6dLT8waa8wWSY=;
        b=HA3KMuXRaEYTviUxDWdO9mA58vtO/l0XaAE1NM5WmM4qqosJ5+FZfJTydfUPCkAEKJ
         nADG9n0BN+Z+Kni3Niz/jL0EPjZ1uj857+Hle62CLUGTQlJIXf4gdaW30tii+K3+83AI
         RmMZsJ8tINWph9418lRvj9/LncIr+QZtF3Aw8uj08TP7PzASaNzy8N+7COFFKwbXBKfZ
         aQkD5zJuWjcVcDc9+xgqfzCjWsO6E6XLEjPPu0S3Zc4u6sq9W1xIPZ5NFDGSZKo4FobQ
         vSYatHcHMRG3f8Da7eyTjnix671unf+G17kmqjm9bcLgxoUNq/lu6EbSw8iPP5vimuzT
         u2Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xzp4NRxM;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yjVI1Wl5B71IT5DcAlOknEwLYIfs2O6dLT8waa8wWSY=;
        b=VTuX0Ly8YxLe8GYKQksSye6/nN24W5681y3Hns+FrIc8RBBYIDdaVJV831zjinjAfm
         RMocQGfWR4jbvsAmNTcNVtCTfI84K433ylRqPvVhEeu4pzDpE4KSQ9EYGK894quGMs7h
         51CDs/04VcfNS6MTZt+keOCKLXysL6pGx/xtLirH++rlWHzYodb1rJKthrq2U6LKM8QA
         2tVZLWTFlHuxvfs82vNzp1t24k/DNbhka8cvdOwuC9pt1A/O8PZ6EF9TmN2TJoR87rE1
         U45eNtNbqPrXKMGo5Er4phFKGFPPeTYEsnLhAFnhDvA7ne9yEJmK0i7jvdyUSUe2SzMh
         C3NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yjVI1Wl5B71IT5DcAlOknEwLYIfs2O6dLT8waa8wWSY=;
        b=RjlmYBObHgJDLZ22OVam/hENYBR23GwX6EzxHjFg9asWmu4kuV2lGizjHAcjLvrCNZ
         hBZLpTP2lrXOtTjnd33/54FpJFHs1n0IOQT0S1tSsS/t/5Qm+hOUj1LtNrG4hmVvORDx
         gAnpJK5IIvl/hxYp3mpNoXcNXcbsuDQd4MtnOwTvxKGY6bQlNHP4PL+73Hb0Ppair3xI
         g2xgHsBQp8dEJg8r4kzw2FreB/ZHC/LVEmSnrtwqGAd/dCmV0N47TVxxmc7TElRO/zCH
         ix8w2ldhHGFdxvw0oLrHAMITkHAJwuEZygijzV8pqpPus6hNYVf7XzteS7nZC23XPQCb
         PYUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+tknkKaEcZ8ChmfVStTGnh01IEf3Y+N2ievZuPozsmcefld5g
	KL9tK0xs8AROXKaAKZyQO8E=
X-Google-Smtp-Source: APXvYqw66Pazu3sMmKr5C0/LAaFRiUZEcCWw2cCz3BBQGCW1rQyVNF4fdCA1nkRw0v8AQqUk+mwUwg==
X-Received: by 2002:a63:4501:: with SMTP id s1mr3323829pga.5.1573646625668;
        Wed, 13 Nov 2019 04:03:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d895:: with SMTP id b21ls584783plz.4.gmail; Wed, 13
 Nov 2019 04:03:45 -0800 (PST)
X-Received: by 2002:a17:90a:b385:: with SMTP id e5mr4494304pjr.115.1573646625099;
        Wed, 13 Nov 2019 04:03:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573646625; cv=none;
        d=google.com; s=arc-20160816;
        b=PqwmAjtbOQo7dqZlWLGBREPyoIIMVv+zg1pVFs/GAIzMwFn5coCidFk2IGAwpLyQbU
         M7TmEciK48ml2Yy01rKS/SDAGyHfaygriiDU5MLMU45/TElK637Urko/5LvqyFtFnTov
         iZ0gjnSZLQz8AsDIwiDj5zmVCTBlVEjyaNZ36bntO9VN7MgaKAmJ+GdlJKPSn7JC+iTg
         ytTB81UP3ZiDEU1JMlYfJFgUHo+7jYUyHmck1ISnH8G2v8VEUOr/HnSrp/0mj5G1mHhD
         rKjqoMTXpmMgWBLeF78IaOD3vm/F2LYLsu7qSavGGbA8cQvNkzFmxwgwz0f3aOOrYFjU
         SgnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nYgn4IRn1cBjvODtXpBqHqRAcVBKZYraPISAzZIQy1s=;
        b=paXj0BKS/hzwUGq66R2DRWT/XL7fgbm3eA3vla9sk9QB+A99JFq1f6pEjeQUzOUk0Z
         Sgb8Sr76zejbw67+0iDiEERhSgh+5hZmqRhLhEZg5NSbekmK6E/TCTOKdYKtd+lrbIBD
         7LkV1BPOF5PI6z2LyeM9GKFK4koBOugZIbS2DG0ME7x7LX/gpP4I0mepsjfPUmwIn6QZ
         kCzllYmDA4OZu95ButegJZWU5xRQ2/0X26SjynZUs/Uce3aT5UoCyRaDyTedwyefZu5g
         VMuAYAIHKRvj3ImZDj6VSlcIGZ2yY/IDefwE4dVv7Z+o1yuRQfOZgqgq9CnGDzxjoU6M
         cq1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xzp4NRxM;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f17si67362pgk.3.2019.11.13.04.03.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 04:03:45 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C0A0A22459;
	Wed, 13 Nov 2019 12:03:41 +0000 (UTC)
Date: Wed, 13 Nov 2019 12:03:38 +0000
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 00/14] add support for Clang's Shadow Call Stack
Message-ID: <20191113120337.GA26599@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191105235608.107702-1-samitolvanen@google.com>
 <201911121530.FA3D7321F@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911121530.FA3D7321F@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xzp4NRxM;       spf=pass
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

On Tue, Nov 12, 2019 at 03:44:42PM -0800, Kees Cook wrote:
> On Tue, Nov 05, 2019 at 03:55:54PM -0800, Sami Tolvanen wrote:
> > This patch series adds support for Clang's Shadow Call Stack
> > (SCS) mitigation, which uses a separately allocated shadow stack
> > to protect against return address overwrites. More information
> 
> Will, Catalin, Mark,
> 
> What's the next step here? I *think* all the comments have been
> addressed. Is it possible to land this via the arm tree for v5.5?

I was planning to queue this for 5.6, given that I'd really like it to
spend some quality time in linux-next.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113120337.GA26599%40willie-the-truck.
