Return-Path: <clang-built-linux+bncBDRZHGH43YJRBJFH6H4QKGQEMCNTTQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7635B2490A2
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 00:18:12 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id y6sf3207971wrs.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 15:18:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597789092; cv=pass;
        d=google.com; s=arc-20160816;
        b=txQnSXUwcFZGaY2itC7OGydbQUx+QXWjLfKFgXo1ODdE2fSfxQlbM7oXt+iwihySpI
         JPjMTDk//oqAkIh/qY/nmuILzny52UlNiuGJehqNT7GPyNiMQJIjhXCzjR3QQlfKF5GT
         ch6q5uSy541zz1r/0Mcl86fbkS1CSh7FgFWk5LgunftMPrzIXb3NDpkWVszcy9FlytwO
         cKtcOWhrPyG6KnWg6WNI8cPZVBhCP1brOX+6fCRedq2x9EwiveI3a5AeJ3Y3zpnI8G8K
         8wDeYtkh7YE7/xhjVbCLnte/EwMof4CJ5NJrd/ysL+Yd1KafG/TwGX6gFW0AkY+RdPhm
         t/RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=06tOEL3umb1X34A8RK1N7VIpwnLNhjhUc1mi1m2H3gE=;
        b=f9d1NyHM17eX7IAI2l0Lvb1e/RXqlJJ1G9pUsh4Cgbm2xpz2AbO4IYr4ZYgMIcjx6+
         rBDQp6qiSO0ik5eeWbzg6xwoMDQul4gpieeSwEKR0UVGw5ev/isMlquoogZgWHJuhkKz
         vtrL0aINBhkGX2TD0BQAcGv/KjFgsD8qxuZefYSxm+kIqnNSCsrTEYTdKngXvYb9IzoJ
         Q83vzgsnEieXraLgi3XvS9v5iAEZ0OE3jHykGBe/GP+Cp4HT4FAC5KrDQaTbTataplry
         puG3RAZMjidTwF+Ut3n+XTaH5NVgxL+B0UMRmBCQus2HefJpgV9v+q8Q6VfyZM7hZ3FP
         2FSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OIqydpEt;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=06tOEL3umb1X34A8RK1N7VIpwnLNhjhUc1mi1m2H3gE=;
        b=FFSt31hTsnbN6Nja0ddPB61/YbPgiBiilNj3ESvX8fO60zxeUzWVvHqHoZGHC7NXF8
         Ru7hi5CpQLx3esqIU0PygTxYBUv3GGFGDfK/d28V+venjaYXqPITCAhqC0zkkzv86h0k
         NWK9IjN+819ajOfIzjH39rtc2Fkxag5uzVNcuB3nKLedMlWhFTnfjKR+Fs7LCybzo8rV
         ErpXSvOYN30WjkJgxCQtF/L8hB3Qr6Nz30fdExRpSlZiP4Bbc4vx0NSq1Rds2CbbHRgw
         +33hEpIM7UyM9epnIp7TpTMC1dRuQbP+HSqO+mO/DhKdnPrSovsDwyt6/OnOqv+GOgDZ
         5b9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=06tOEL3umb1X34A8RK1N7VIpwnLNhjhUc1mi1m2H3gE=;
        b=H4zg9lSzfPpw3Tf5vf0buZv3uin+zl2QNN23fyx++pm08d57gqZnIAQJg81wdSilsY
         c9ZOzjmlcMcS/le4dgxpI7ksRsOIwO4v/iionLUWwSl4pX01xjJlN+O+uQiAGTfHIo8q
         EbxD5fsFmT3MnMuxYeiXW5CpD+lxWZO+zrhOB6ztjcGzbDSG3RAFrl+kHLkt9H0ABa0W
         9HOzjl+nsbyDvP2RL6nuVitZn5ZyvbqRb7DUQ3x8v5xacDul/q898DIyEJvePmvAUb48
         D5ptVrFvl3Og3hgHQv3E6Qgg6ZNhiAOsFEHWRLhD9LDkH/Y0eHn8nWm9G8oJZLhXeAPQ
         1Zbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=06tOEL3umb1X34A8RK1N7VIpwnLNhjhUc1mi1m2H3gE=;
        b=DBcKc41l2mBQlMkN+50MzDQWKsZa/xMaYj2RdAueEskgFAvtl9hHeaZvX4pcwuOB7h
         Fvc8oX85ClXBmP4K+r59x82/kXb44MiymeB/p40BS0it6KzTf9k8iI9USvUpJgkHe1yZ
         MBpSdnWTKjGNBnKHjP8MwCcKIn1kKl8p5kn8dIEb/Hdt7ii3b0UZqQqP2Y+hoQoduOmn
         h8ONpz73pa7/IIBzgaY6H9lnvsyh7YGrYXtgBECOIh73WEXXQ6fjCtShvoMT5W58Vn4U
         PW4W6RpLOhRN34Tmv+HqI+R5SCUNspuUuAJBKiS9haa9xyvfN6+Ur4UBe1I83sDUbrqs
         rZoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JbcJALy6NukZWq//BQzf01htAnubhvIO3iTz2MY+ypF8M5C1h
	AMYH1CCwW/Cg5DQk+dCGHXE=
X-Google-Smtp-Source: ABdhPJwWonsU0/nBRU8CzA/3NMNs1vLgPHoydLi4jO5ivNIeyO7Jpy5mfcPS6iBD8uAmrBp3Oi9YZg==
X-Received: by 2002:adf:f207:: with SMTP id p7mr1257576wro.292.1597789092218;
        Tue, 18 Aug 2020 15:18:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e78f:: with SMTP id n15ls569703wrm.1.gmail; Tue, 18 Aug
 2020 15:18:11 -0700 (PDT)
X-Received: by 2002:adf:a112:: with SMTP id o18mr23635666wro.73.1597789091605;
        Tue, 18 Aug 2020 15:18:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597789091; cv=none;
        d=google.com; s=arc-20160816;
        b=tkC1yFu5eEFVO4DGb1f+4cPuom+t7hK9m1zXhE5zNZf1+3LomyaC0pykCij0moWeHi
         g6IIKNBvjPVs6X+A+MnUukuFb5QVwZpnuMja4eMoEQh93Sd2jPGkt+clkjpd5nKHd0yT
         6JA4kqwNUTtGFFWLCMeYi9nO8ocFBsWsIU+y5hTAQnujZkmb8vjNjLmTBdLniCh92VPI
         7wPoWpNUOb/ZxMXs7zoYSlhAYkQG+lAcQQXIj3YGtyDTbujlw/eO9lu8xfil0Lz4mBbs
         R464E6U8u1yyHMUICp9U2I2saBLKHqg8vRkKgH234u96YlaVx+OcsEed/JIboWn2TSs8
         aHhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nn5mkrGFBbPg90QSTX4ScoaPazdulb+v6hO8tmlQUhM=;
        b=ewELurpHkVTm13uy4O/Klq2V8WFVbMTxrRt6OTmvgkLTt2fqqCAUCA5xOuXs9AEEwP
         5oojYv2+fl7NPwDOBGuudIaRTFWkR1FiRXeKZi1RxURrETW+LsFKPH6o+AIHcYrLNtx9
         9S0ykbcFeY97kmIvv5IbdMjnnKDMtcPdJ9CQfdZNFrAVjGRw8RnwAbGs1Jcyd7hLGXgD
         I5JR1FY31jbQPq0e7V6uhgT/2sSbGXWoyRJfwUnpP7w+/hIxD7VINb+7yWmuBpI6s68m
         RjcF4XVkYcVW8yHZWZnwHWggehKA3VwqGPmI7MYQp+Gtr50+gH/M2ycGolgrUyEQl4T1
         4Cqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OIqydpEt;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id 64si25032wmb.1.2020.08.18.15.18.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 15:18:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id 140so11034239lfi.5
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 15:18:11 -0700 (PDT)
X-Received: by 2002:a19:cb51:: with SMTP id b78mr10676996lfg.130.1597789091106;
 Tue, 18 Aug 2020 15:18:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200818151634.14343-1-rppt@kernel.org> <20200818151634.14343-11-rppt@kernel.org>
In-Reply-To: <20200818151634.14343-11-rppt@kernel.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 19 Aug 2020 00:18:00 +0200
Message-ID: <CANiq72mnzTv7SphVxsYy++rAPdaKVVLGGHauxNLY5D4dzq3CPA@mail.gmail.com>
Subject: Re: [PATCH v3 10/17] memblock: reduce number of parameters in for_each_mem_range()
To: Mike Rapoport <rppt@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>, 
	Baoquan He <bhe@redhat.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, Christoph Hellwig <hch@lst.de>, 
	Daniel Axtens <dja@axtens.net>, Dave Hansen <dave.hansen@linux.intel.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Ingo Molnar <mingo@redhat.com>, 
	Hari Bathini <hbathini@linux.ibm.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Max Filippov <jcmvbkbc@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <monstr@monstr.eu>, 
	Mike Rapoport <rppt@linux.ibm.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Mackerras <paulus@samba.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Stafford Horne <shorne@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, 
	Yoshinori Sato <ysato@users.sourceforge.jp>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, iommu@lists.linux-foundation.org, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-c6x-dev@linux-c6x.org, 
	linux-kernel <linux-kernel@vger.kernel.org>, linux-mips@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, linux-riscv@lists.infradead.org, 
	linux-s390@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-xtensa@linux-xtensa.org, linuxppc-dev@lists.ozlabs.org, 
	openrisc@lists.librecores.org, sparclinux@vger.kernel.org, 
	uclinux-h8-devel@lists.sourceforge.jp, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OIqydpEt;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Aug 18, 2020 at 5:19 PM Mike Rapoport <rppt@kernel.org> wrote:
>
>  .clang-format                          |  2 ++

For the .clang-format bit:

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mnzTv7SphVxsYy%2B%2BrAPdaKVVLGGHauxNLY5D4dzq3CPA%40mail.gmail.com.
