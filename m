Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBONL62AAMGQESAQWUVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6C3311091
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 20:00:11 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id u22sf1428678oot.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 11:00:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612551610; cv=pass;
        d=google.com; s=arc-20160816;
        b=CQPf6mTdkyPAqlyDnjD/rVwrE3l9niu/432QXZQE3bX3FwUo1zkrXL09S7ZhqRRSU/
         s1q9UK8A9zsEzwcTMwbaQXRLD9GPFgh3XPRQMza3YhfQ/Qkxiwh9bdrZM/rya7z0yyVW
         vQU+KEQ6Z5BiKPOllnFWwTfZ2ziQfSfuzy2K1awsmhjeFfVkMG6J2L3iphWgACtenmNA
         0gGsmjE1kS5ausCDZLL4ijfdCnh87duf5FrVYKNvEkrcwyW1l085glzUk+KIN1xYPK88
         mR9mCe4awVvdMD/546O6tRzrQQbWOj02Zu+rATwcECUJlOtIpJPmAokKsiWG6vkxufZD
         //7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=trzJMs7E9MNXsyw9I28NQHmNPOZEKk5k550/SYhijEs=;
        b=VLfYzt/ZlsY4S629wMqp8QLNrxcW8Oo5i6u5WXCnjDTTEGUWjao5S14LeaC/7OJ4jk
         XIFLHUJoLQOwBO25Ykg8LaGW0YnCaV/P0H09MKkAiS3bhOq5Lfw3iIDclEYPNT+CxM8E
         N5XUjoCE4EZCPb0gpgPbtHow8MpBo1niemElMluAupHM3/0xFi+xQtk2rRTdEZJZq6FD
         i8TEPOgzmniRm/g0jFTUqDDgOwzW/HSC3dMEEUQ+1SldAq2cj1zjTHc8nOLxKGlkaAi/
         +VxAOEHhnZekn0PbECj/AW7kZ0SUJ4TleNk1dtbrKi1urB9ZEe60jqlfSL86ZTHjVgLx
         bnqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=t1ppFdNT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=trzJMs7E9MNXsyw9I28NQHmNPOZEKk5k550/SYhijEs=;
        b=ceKfCMmA5RUr92NXr+RN/R/Yb56EQYF5z//enhjI+KMAjIaR/nC7iqn+feVVf8HspF
         XPT7/FERK3BBpF0BtWTtKnwJxOLHpYcookekP6FEFoxcgvvvvF+MY6nEqm4jQZHXOkAh
         GPewZdoTz5f/TYVnOdcMj7rhfeve/5ydKLgtW6inFkRrg5MlbWFO2XH29YZxVfL7dqyx
         Lwa3/r/UvurkeGYvqTa9TWHyXeUD2C0OlhSJ+6CqLR9Vay4PXmrwEINlZ01nGp0Zqfom
         yGcUU5Wmu0lEv87Z0pniosKtEy+Vr4DDMQah3HS3gC2YxrkF40gGVvCB8i/oIgNF94eN
         T78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=trzJMs7E9MNXsyw9I28NQHmNPOZEKk5k550/SYhijEs=;
        b=T5rv91fSSlNTL3GnRAzcYNlSZHv2hWLVL3aKykPCd/CnCa87qAvJDZEuID1NSBPp00
         9psjBlZtnhjvW6765PDl/9QJ3tbVlxKowVEFb3woNF4fYvVKmCi+ZbmYdMhzeu+Pcab4
         PN5iqQKmJR1YSKTdTtSs2T4g0yHsNxwbR/SRYEhG1cK9G7i7gSFA2GSJzUyupOP3XZzr
         9CjRj0cGhHewKiJUXClkEF6C64j0Pe2xhv5Baek9WsdvpXS7SAUgVh2NKys66EqPtG2V
         ZokUPGxGbVJrjtGIs7GNN7qkqqHmkCUocLY7VPKRkOka0o7q8WGjmWGwa1XWGRp6Rmvi
         xJuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uqoOiZR2pjrG3ItyTAkdvkd1AzIoFfVl3JRM/5/Em+EcbTbhj
	VVAaXrQiLIaLWXVbTPzanXw=
X-Google-Smtp-Source: ABdhPJwiTmQHJ8mK+J6A1i843pQGtEUJw17RODzV0GzTC72co5e9iBLcBkHjnajIjNHhbKsNKAvt+A==
X-Received: by 2002:a4a:8555:: with SMTP id l21mr4563917ooh.27.1612551610041;
        Fri, 05 Feb 2021 11:00:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7249:: with SMTP id p70ls1188824oic.5.gmail; Fri, 05 Feb
 2021 11:00:09 -0800 (PST)
X-Received: by 2002:aca:4a15:: with SMTP id x21mr3996084oia.116.1612551609682;
        Fri, 05 Feb 2021 11:00:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612551609; cv=none;
        d=google.com; s=arc-20160816;
        b=fOfXFdUUleRy86oNrEHw3qWnMsA2+w83ipgoeTn5DaBddUQ6swnhwnYy8a1OS6kOzz
         Q08IsHxdlqiPYFkwWMkPW03rfTYxZdoAKIW39HJige9LlwU2SFgmRHc1IIEBB+xUFtRG
         uywqq2tRIAem/wCwKqRrWzYVHMsjWae7PJByAilj92BHNjSqiCARJrQzlvD/ifozjQ/O
         C5UkzS5gMiGmUwmQQA0C28AAO4bUHZSspvsFsdmKcWqtAMpO0WC8ystFU2i4RqGFr1lX
         nJ2g3ZUS8S5D+MjAmUtLZ/BRImlbgtQ76j/vVeVJIEGFH4bIVD1L+0G1l8+8kCCi/pek
         90FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wyCn62OAgWjgRXUvJe213hkgp6d3Rl9BzKTexQF/+ro=;
        b=qncqNTMFadrYj7hp+owg0fiSLx4rL9ykqRuXN+pIl0XCC+y8x/Ir3ngmlkNhDjDSRJ
         XWjLuIgPTVdyMy7bLGBXTcRqlpT0R9pbtYr1LFK1NcD9FA+0VL6w8xaG65pjvZ147+R2
         PpNODGRuBQmgaKF4YCOc49vFAsdIRdTlCQYiIpGSumb8K/C7E+8soGhurJJCq42BXeke
         +N0gNV648q+qHtbOCqG+6mWITHRe2m2BjZ12ZlgsTw4Ju5L89wLDX+YPry2WpFFQaNQt
         NT7B6T6x6t048+8tqdTjI5EdcFdhXm2tWLlLjnmKDtE6sHGWIrX9GyTgZV7O8m8L4F2B
         7L+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=t1ppFdNT;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x35si733590otr.4.2021.02.05.11.00.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 11:00:09 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 75F1864DDD;
	Fri,  5 Feb 2021 19:00:07 +0000 (UTC)
Date: Fri, 5 Feb 2021 12:00:05 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Wei Yang <richard.weiyang@linux.alibaba.com>,
	Arnd Bergmann <arnd@arndb.de>, Vlastimil Babka <vbabka@suse.cz>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Brian Geffon <bgeffon@google.com>, linux-mm@kvack.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/mremap: fix BUILD_BUG_ON() error in get_extent
Message-ID: <20210205190005.GB461042@localhost>
References: <20201230154104.522605-1-arnd@kernel.org>
 <20210112191634.GA1587546@ubuntu-m3-large-x86>
 <20210203184840.GA1711681@localhost>
 <202102031202.F0AEC4A7@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102031202.F0AEC4A7@keescook>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=t1ppFdNT;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Feb 03, 2021 at 12:03:07PM -0800, Kees Cook wrote:
> On Wed, Feb 03, 2021 at 11:48:40AM -0700, Nathan Chancellor wrote:
> > On Tue, Jan 12, 2021 at 12:16:34PM -0700, Nathan Chancellor wrote:
> > > On Wed, Dec 30, 2020 at 04:40:40PM +0100, Arnd Bergmann wrote:
> > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > 
> > > > clang cannt evaluate this function argument at compile time
> > > > when the function is not inlined, which leads to a link
> > > > time failure:
> > > > 
> > > > ld.lld: error: undefined symbol: __compiletime_assert_414
> > > > >>> referenced by mremap.c
> > > > >>>               mremap.o:(get_extent) in archive mm/built-in.a
> > > > 
> > > > Mark the function as __always_inline to avoid it.
> > > > 
> > > > Fixes: 9ad9718bfa41 ("mm/mremap: calculate extent in one place")
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > 
> > > I would like to see some movement on getting this fixed in 5.11. As it
> > > stands, this is one of three __compiletime_assert references with
> > > CONFIG_UBSAN_UNSIGNED_OVERFLOW. If we want to keep the BUILD_BUG()
> > > around, I think this is fine. Alternatively, turning it into a runtime
> > > check would be fine too.
> > > 
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > 
> > Ping? It is pretty late into the 5.11 cycle and this is still broken.
> 
> I think we should just do the __always_inline. Who can take this?

This should probably go through -mm, unless we get an ack then Nick and
I could take it.

> > 
> > Cheers,
> > Nathan
> > 
> > > > ---
> > > >  mm/mremap.c | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/mm/mremap.c b/mm/mremap.c
> > > > index c5590afe7165..1cb464a07184 100644
> > > > --- a/mm/mremap.c
> > > > +++ b/mm/mremap.c
> > > > @@ -336,8 +336,9 @@ enum pgt_entry {
> > > >   * valid. Else returns a smaller extent bounded by the end of the source and
> > > >   * destination pgt_entry.
> > > >   */
> > > > -static unsigned long get_extent(enum pgt_entry entry, unsigned long old_addr,
> > > > -			unsigned long old_end, unsigned long new_addr)
> > > > +static __always_inline unsigned long get_extent(enum pgt_entry entry,
> > > > +			unsigned long old_addr, unsigned long old_end,
> > > > +			unsigned long new_addr)
> > > >  {
> > > >  	unsigned long next, extent, mask, size;
> > > >  
> > > > -- 
> > > > 2.29.2
> > >  
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205190005.GB461042%40localhost.
