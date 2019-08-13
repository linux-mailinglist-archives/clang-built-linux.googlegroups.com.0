Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBFW5ZPVAKGQEZIJOA3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3FD8BF59
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 19:08:39 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id v3sf79784230ywe.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 10:08:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565716118; cv=pass;
        d=google.com; s=arc-20160816;
        b=JDZbdHERBLqP46bq0eqpW4WS7sxO++MT3b5l9w3tSjJe92p6y9LSWza7oWcyT/jz2J
         i1tbWjKcKyD4N21/CNufBCBU6Tk6ppUShswwvLsbVgcfkLees07LJ0fSMoMyRxQ4aHOg
         CXxXMLI1E3zCzdQB4oVUMna+Z5g2LU7Ac7NwVc9qXLXfWYxWEbkXf9bYnO7n/rxJZKTj
         EIxXr4JDaccSC/Ved2wxaBcqXtimFzt68NKU1jWSYr/2TD+hZK5MRdhQMwcSELpJzoj9
         wfMi5igDT9JGZ/9Tf4DePNOPXubZCxqCsX4Oh/WBy+Pcwvv0aC87py2r+Kyx1P+QxC6B
         +YEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ujj7idJetyGpI9/V6LkmKkFLfFAdTvLy8/0qH8H3X/k=;
        b=Or6tzU3pkA8iNVWD00wlt7vClZRB0WAT00yQfmehy0aXIgQaw70jCzL4khf5VKyWeQ
         xn2Q3Sr1q1EOgTe3w1WiUmqjZzc1MX8EZFNlA1oYAojn1hynAQYeHfhuoAafSy6uqPxq
         zfpdYTK4f9JAt6IkYR4tCCARWA7UwzVXx7+GwcVNtmO3vXO9u6JxJvvwjKiE3ePt4qja
         wTUKHaSICco6cPuANCMXObNHkzP4YEUJgSrJ9wt82qBFEsH0p8awbn36ee6A3xsl2kuf
         EkANMGxXTvSxgaE70uBhAnjnWLBQVuEJFhSBoV/95zwrxDyrJ5JrxmfqCF8WBrVPJOUj
         1/Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e8o5cKrg;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ujj7idJetyGpI9/V6LkmKkFLfFAdTvLy8/0qH8H3X/k=;
        b=RuG+1uZqZqKDLgJrsbh+Mcy/OoIRSvANoE8PRMB7I5tVsRIw/9QZsYlgcSnU7IDEot
         nbUS8UBfX5y+nnKfugKEEFGEyqlS+3n92WOz5orGGhnSfvLgLkzf0xPTSs7I+7BxQeaR
         Iw6FGZqZBuypjWu/7ux9+V0GLPLM+142cIIc4clBc4lDNxqSyDQthsupr1X5rK9YjGRV
         +bhAYDnQsrg5FqP63F3+VpJNOM+I1GTrLQmC4Cwqo5BfayCX7E8e1zYPIpV8S1jDWhBx
         TNO0YMWTtprhMhVfp4gknBO1bAFzcH1TlRfPaQe/+Q4BpNi7H4hkmPQRhgm8fX3KMLV1
         b/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ujj7idJetyGpI9/V6LkmKkFLfFAdTvLy8/0qH8H3X/k=;
        b=fc2gBSpv6kojpo5FLDhQpPGJJ4kOhV4UZ725CwosNdoGCXT2rZ5ASClaUloB7vwCom
         m6iivFbBsI/7zwnmhMDLF5X+BaEdAca2uFVpslAw4Y7DQtOgSIE0gm+HwOs+KwplJ9sy
         VvZtFGLXr+Exy2/yaz+/51fTLGG6O+TyxVCwu0434EJADBF6TSNHZiNcWlx4igmdKd/8
         4KCHNZlHegJuhQB0KCZF5o/1pcKLHdRM9T4q5ZmQgogWL/C+0HqC8j6KabcEF9PhpsRN
         ZylHKyyXAg1L9U61jaRMB+UtR514R0HQDRTWmYJMYiYFFz15YbQ3n//legKnEFjY9mWg
         BtRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUGB/HWXcEdFnekR/fuS+j+bAGWC8xX4bezwUQDgPK8PnDPDPZf
	p/HEG1+sEy+auoJzRHbYz9k=
X-Google-Smtp-Source: APXvYqwimsHffp4yt3BM3St8tne6XGoEHwUqJIatMzvm6J3fSatKgf0Q/KDoWpCTurDu9v0W+eDapA==
X-Received: by 2002:a25:1cc2:: with SMTP id c185mr26619593ybc.495.1565716118368;
        Tue, 13 Aug 2019 10:08:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:5c7:: with SMTP id w7ls7617815ybp.10.gmail; Tue, 13 Aug
 2019 10:08:38 -0700 (PDT)
X-Received: by 2002:a5b:642:: with SMTP id o2mr8038654ybq.70.1565716118082;
        Tue, 13 Aug 2019 10:08:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565716118; cv=none;
        d=google.com; s=arc-20160816;
        b=H71ODUCmb25HwuB3mv1PCS8KspppjQDrY+wV3S1tMkiloejybtTl10L1fX1eu1EI60
         pRANSExoK23dNlDjnj2G8z3Ljq58qLyavggl+QYeA41Lm7dgnFtmCWrMkLfsx4/oBeB8
         Pt8KlEPg2zGvEfdScA5KDSbQcOkwsoIxajgwc0aiMZNgPnNa/6y0ar3e02uiWR/Q+RzD
         NxvAHYBZX5EOdF3SeT8zMaZfW9FZsg2hVCv/D/OWTp58RVprJ5XdvJ62LIFhojPhwr3r
         AuRooF/1s/ANlSp4sTxwyG2zcDHU6ic26IsaAbQl6yINRO9Oz++r1kcioFPBmb0aokdK
         yUIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=C9anC71gXmJ0riAJBy6b59cYZXFPooMGozNaZiJa5VY=;
        b=MGSrvH5d/Cr+ekyQ7NbmKwzNKm1BkBzWL5doC+e6GemhiWW6fcnvW6NFRXtU8NBAGH
         vVCT12ploPfYopi+cKa0FlXcbv8ob2uGlD1gyotJtP2rlJ5plOvpa5bUyLZwJOho1mT6
         UqiJPAQ3fR83cs1P3QJhTYLQYzK4rjVhxz6fCwNaYYwO5KbxJ88ldFL24Xr0yJwr3ju+
         bHAOKiaWXmCO6QA0WwviVh3YFYTgVTKvpK5f7OwLMQxga1sFnaHUVzbp+/isKVrn8K7h
         yevzHMRpdF5M/TAF41IGfmUeoAsRb2ro2wf3MbFmNFK97/QR5fTjqw5EZt+oUd6nJ/4r
         175Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e8o5cKrg;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r1si6274706ywg.4.2019.08.13.10.08.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 10:08:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 50A5020679;
	Tue, 13 Aug 2019 17:08:33 +0000 (UTC)
Date: Tue, 13 Aug 2019 18:08:30 +0100
From: Will Deacon <will@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, yhs@fb.com,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Enrico Weigelt <info@metux.net>,
	Suzuki K Poulose <suzuki.poulose@arm.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
	Shaokun Zhang <zhangshaokun@hisilicon.com>,
	Alexios Zavras <alexios.zavras@intel.com>,
	Allison Randal <allison@lohutok.net>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>, bpf@vger.kernel.org
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
Message-ID: <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=e8o5cKrg;       spf=pass
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

On Tue, Aug 13, 2019 at 02:36:06PM +0200, Miguel Ojeda wrote:
> On Tue, Aug 13, 2019 at 10:27 AM Will Deacon <will@kernel.org> wrote:
> > On Mon, Aug 12, 2019 at 02:50:45PM -0700, Nick Desaulniers wrote:
> > > GCC unescapes escaped string section names while Clang does not. Because
> > > __section uses the `#` stringification operator for the section name, it
> > > doesn't need to be escaped.
> > >
> > > This antipattern was found with:
> > > $ grep -e __section\(\" -e __section__\(\" -r
> > >
> > > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  arch/arm64/include/asm/cache.h     | 2 +-
> > >  arch/arm64/kernel/smp_spin_table.c | 2 +-
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > Does this fix a build issue, or is it just cosmetic or do we end up with
> > duplicate sections or something else?
> 
> This should be cosmetic -- basically we are trying to move all users
> of current available __attribute__s in compiler_attributes.h to the
> __attr forms. I am also adding (slowly) new attributes that are
> already used but we don't have them yet in __attr form.
> 
> > Happy to route it via arm64, just having trouble working out whether it's
> > 5.3 material!
> 
> As you prefer! Those that are not taken by a maintainer I will pick up
> and send via compiler-attributes.
> 
> I would go for 5.4, since there is no particular rush anyway.

Okey doke, I'll pick this one up for 5.4 then. Thanks for the explanation!

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813170829.c3lryb6va3eopxd7%40willie-the-truck.
