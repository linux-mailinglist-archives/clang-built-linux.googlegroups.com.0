Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBWXWYD2QKGQEXWK7XMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC811C3F2A
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 17:57:14 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id l6sf5887823lfk.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 08:57:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588607834; cv=pass;
        d=google.com; s=arc-20160816;
        b=KTQBxI8/+lAhTKyKx1ZafVMrGeu0MNbcMw5NE5B8MCKfRB+Gjf0B/XntDhHu9g1XG6
         gZKh5XKEt7MZNUBe+OlQp1lISCjbVTZ0ooMc8KIS+zw2vyE/rgfVCiszci3TjWt2m0Pt
         k+0c/rzD7W35UkEuZajqX0u6I6P+7SKmnJ0LlOkDJDOkwXMSTqtLt+A2OTgBce6AKT8K
         dy0+9aqhSJLPNg+xui/C1kdU3UgGVGO+nRNN/K3jOVmWl+zXcNxWcfwYQla21hh48JPy
         FaPkVE2s95S85vRg3A4eYIxw6ElBuyFWQ0neQTXs7HquIYEfq0DJuvnKhCyLMxTDk225
         L8Nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ffLWWFR9WP/gxrgbISLX81pDl03g/y5rHlbeoH/rXb0=;
        b=g6X0El71JE0t0Hc1TG2I4gFlpeS2MdSHqlmNz5zjadh/ox+8qv5UhRkWQzoYTEGVU9
         fynhiYmln+PBNq+lwuEI9PXYazRDy0mIUxMfkTB29t1KdI4w7rfl6iI+ncOV+Ti4PuaE
         kYD9cnIt8R9LTr3LtJyHTXQ6vVEpfePO3VZIUFu/ZpmDEmd9jz+FbX+uHrXlAnuI7aFK
         AcQ0kSubgxwm0cxqO/BY2Aa+wMtX3bAUwAfE9buvWQpN21P/1p4hkbECZLYgeB/2ETcZ
         xiFzYDqq6qgtNfvfQnW+RfUhr2h0Ckaw9Hp7cymx74i8HWcJvJS+FxH0O+pRvGCUHS19
         CeIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ffLWWFR9WP/gxrgbISLX81pDl03g/y5rHlbeoH/rXb0=;
        b=pXkV+RWcwwM+HAmuV3mtWDy29xrCiN/pAzXs78eb+MNnwYyOP3mFyGN6CukPQH1o7G
         efHsmU2rafC35fTtucgF4cf+aqn+0sjkPiUvf/ngUbxArkoxrbQuyU9/TUh43DMVVrBv
         RR3XjVVejSiBkUVZoooWCD5mbc9zaI/88tAT++YMoq3UvJNn4EKwffDlMrAaJ7alIOzp
         YK7V8xiVqUr0lFDmRfb2OhbEuShwb8tyN0lMTd/TBNL7Apw01+VQfQ9in2IjiKeq0gpq
         fdUJNI60zjMm0NHHza7073eGj4knUyGR1Th5ZVlKaIJaAl0IKlYCiffve/CEP0O7VfAr
         HN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ffLWWFR9WP/gxrgbISLX81pDl03g/y5rHlbeoH/rXb0=;
        b=ZqLHOjAi7nuZENlke51EXGMEzijtvmIZSk1wbO0xBrHptr08GmqV9qJiuyWNNqvG1P
         4azeh+Kba/Ol8G7F5V4ujsgpOGYGVHJfX2W9sFY0+EJESMGsJhqy9vNn8zNF+YDyiHgq
         S8qI5gCGdfzc0RxgnldipMmw2qrIi56EfXGR8cQ62a6DEwOJJM3WAcRtrC9/N1dgTdmz
         1cSi4VCiI6+n+kRX5eEaYFKAfDrUVZsOQmHJ8QTQc2MCxtM/+fyGGK43YiENkehzNZLI
         joG0SCn/DbfwXcKWlmhrshnyFCo6mRC0oeJRP+TNxkhsxeOTKZDBDJQk1t/umY9C0wGU
         H/Vg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYlahT1eGDq7R5NFm/ilB6VHws/0b3RwY1iybv5jluSjkwZ8O9z
	5btGYjaxa8eLCNklLKzPBnw=
X-Google-Smtp-Source: APiQypKHq/A1bcB+RjreaVIIABYfdbvjTXUchAZLavfc129LrsLTzEJVPSR91iC7ndbQzxJmu319Lg==
X-Received: by 2002:a19:ee06:: with SMTP id g6mr12292762lfb.90.1588607834391;
        Mon, 04 May 2020 08:57:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ef06:: with SMTP id n6ls1741536lfh.7.gmail; Mon, 04 May
 2020 08:57:13 -0700 (PDT)
X-Received: by 2002:ac2:48b1:: with SMTP id u17mr11931612lfg.187.1588607833283;
        Mon, 04 May 2020 08:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588607833; cv=none;
        d=google.com; s=arc-20160816;
        b=hlUbCJz4fSSqEhQTVcuSISVuuZvMVJmYxvp48GXOi/P5ed8t4GW5kn+wWwSppzmWZR
         G4vJK1iBc95/EKTM1QCddYPQM5q21ge2t7zR65CsFMvj5zfr1fw/sP/xHc2/C1km0eYd
         iDaL5jRn7oJQGYn23W5wCajAMjW7AM/Pdvn8ZibYdlE6YMdGdxy4td2thkLQr96mx5Z3
         ZdNNfPAt8P4lZIEaysCNqPQgovWlVdSSqEQbq7WLCe7LYtQuvH47rnIVY593JU6nxj4b
         5QvoaLZg3SwGoQ+TixnPVXoZRvsTXBZuTjjq2MyxNT7/IT6QBOrQKH7ATS6JlNsB+KFc
         7Tww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=FtsfL5Iafykp7MNl+i4qzrbhNhjUvpiRPoDG9xlMfNQ=;
        b=r7PpPWMDjuM5t8D63E/M73l9Bv1m6Fy0BGcMz082vszci+FC5y7FjK2sZOsZmYKtsP
         0BfEA2eYwRYGzQqrcLbUgubzJOIKQ+jjtK7Wy170C2QhdSxLwdD4rAfSEFHgvnkgR17G
         QkUdFuQvzb6XZLKq7X6iAF7XsnRe9ZJ/zyKV7H/Yd6IfMOGvPwB3Pw8i4efiM6lPXcvh
         jo9NVrtTLfQdp6mY8M0J3w72hGmh5dJevBtCysERixrbewsJUU2mJhIIvirvg/NutICA
         G54jl0znM+rAOwGAAxJauv0R/02RmhObAy7WqIgcM9Nb+9b8ulLUqttp2XxBNvzu73jq
         E52Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id f1si905121lfm.1.2020.05.04.08.57.13
        for <clang-built-linux@googlegroups.com>;
        Mon, 04 May 2020 08:57:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1jVdSx-0004JX-00; Mon, 04 May 2020 17:57:11 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 8632DC036C; Mon,  4 May 2020 17:46:13 +0200 (CEST)
Date: Mon, 4 May 2020 17:46:13 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Paul Burton <paulburton@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Jouni Hogander <jouni.hogander@unikie.com>,
	Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
	Borislav Petkov <bp@suse.de>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] MIPS: Truncate link address into 32bit for 32bit
 kernel
Message-ID: <20200504154613.GA14031@alpha.franken.de>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
 <20200422143258.1250960-1-jiaxun.yang@flygoat.com>
 <alpine.LFD.2.21.2004230036480.851719@eddie.linux-mips.org>
 <B307BFAC-9973-4444-B69A-40B054210E84@flygoat.com>
 <alpine.LFD.2.21.2004241316360.851719@eddie.linux-mips.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.21.2004241316360.851719@eddie.linux-mips.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Fri, Apr 24, 2020 at 01:22:30PM +0100, Maciej W. Rozycki wrote:
> On Thu, 23 Apr 2020, Jiaxun Yang wrote:
> 
> > > Alternatively, have you made any attempt to verify if actually replacing 
> > >the setting for VMLINUX_LOAD_ADDRESS would be safe?  Glancing over its use 
> > >there do not appear to be many places.
> > 
> > Limited experiments showed it should be fine...
> > 
> > But MIPS kernel has some design I'm not really familiar with like SYM32 for
> > 64-bit kernel and special address space design for Trap-and-emul KVM.
> 
>  This only affects CONFIG_32BIT kernels, so SYM32 does not apply; I can't 
> comment on KVM.  There's still that bunch of:
> 
> $(shell expr $(...) \< 0xffffffff80000000)
> 
> constructs I mentioned before, so let's leave your change as it stands at 
> this time.  Please do rename the variable as I suggested though, I hope 
> that's not a big deal.

Jiaxun, are you going to send an update with this change ?

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504154613.GA14031%40alpha.franken.de.
