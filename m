Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMGD2LZAKGQEU4G26TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E08616B885
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 05:25:22 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id c31sf1216106pje.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 20:25:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582604721; cv=pass;
        d=google.com; s=arc-20160816;
        b=tWUpOuNMyy/GwXjjKKuk9siQ8C3rgLSy0bloGXn8n4fHwzwmyt9+rg6DC0uulk8p7K
         KiYnuJlgTZfKP7Zsuk5u/jhwgEKB8eKbptorJ9M1YGdnHbvOP8lGnBiDdX6RNOL6ENJB
         QdogzWXV4tjBqPxXYZZ1xSsNJHDcbaezEKX1hR11e51yDzMhUVhWWcmuo5ccnWcAv4U1
         rBKTWuqFnAmdyT9dMO5xPGmXp5IbAswlI1feMG0OTLt5O58LRy8cHGfM6kAh2ZHwe7BY
         6ZJW2hNaG5+er9lw3Yb5VPWhzqpM5+Jqgr43dPbnW/sqZESmDNWqNVh8KuAYvugIezdb
         s51g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=0d0MQSrsnWV6zhTpe6MNBHMqiMpohgfZqzqC+34AqjU=;
        b=iw3D/GKIaXR6c5J8G7ZDX6doBDTg9NRkUZkqRYhvwhjmFAaa5AyZi5NgbbY9N9AlYx
         kO+7Hf3AZS1nnaQDYME1Suavyb+idF7IX7Hj47Qn8+LH8Ub7u2hTyWcsOoGvt8znb/fd
         ybBMvJFgFOtDza97i2VY8gSI6o4yEEqdUP4/nBHdlEHWz5JvvXkYTm2bIZCqpYTRuAiE
         WuaFZg9UGygquUEAkntpMQ1bChn1DnZzcPQsoxsHE91ukcrcQ3q/XBma2X5uoYiKGCWo
         Ee0shG5qA9WtzcdlvIo16qwGZjoMcHJSdnOnQerhsgb5NT0Y1k1Sw86RvgYxaBqVR98c
         Xh8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Os+w8rwO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0d0MQSrsnWV6zhTpe6MNBHMqiMpohgfZqzqC+34AqjU=;
        b=HbngBAqFJDJjUHfnk5pvEUWi3WhqqmNCbE5QdDivGLVCDD8EmG2nLTOTX/jAps4mjw
         911HbfwIegwtJBaa1yLEL3sObjplZgujCfz6PkC8QsgDXt9etphfOUVqfnSocElSv5LY
         3pFSsNCwiKY9QG54B7ZSrfnmyRIWwRkL5m/Zy3zVpgr+J5F7dfvtfiivBRRU4R6gG2Vn
         C6OZzkAMm/W4qxiT4Hh8GnV7etoBr+QY/XIY2RGP+OBSWR3NqgPOMHYG2j/wItktcYwg
         jq2Cmzjyt2jNtI8CwBBdEJuccAb4EAa3hYNUcmxdjU+E+bU5qguzuPUiNtEfv6T5/2Wr
         kBlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0d0MQSrsnWV6zhTpe6MNBHMqiMpohgfZqzqC+34AqjU=;
        b=n376NCCEonZIHBHK1p/E4ZRkXENK3ImKvSHCfHUHxNAtVPgCKIuuYFWWKsu8soKPrz
         MI9dlHiSvQYdypqV+XfCAoEV0gw6edVglgObA82Kw0iYejyXjL6/YgI2vi43G93GPjkT
         OJCTs0GM0DwtZD+fKOVgXXnVtSaHTkiP0M0FEXfrYBkdL4p8dctN/wfryeRE46iTBwDo
         v+F/Y4XOkPtk/bAIseDNd19UE74+kkuctI47TfT9B7Ru7OQMuSm15kTirNAX/HTzlyD3
         UhUu1uiGgwZIWw2VA2Qzb2x8/XOhv9Yswr5NbbUJYO3Cxxtu/pKhGgbBC61nWIPWdJ0i
         wOpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUZ6iFW3nELNScy0UKXKGLWrpE4+C5JWkAV+XCCqLBW91bflYQx
	Ykue7/Z5L2yNqve7Or9fry4=
X-Google-Smtp-Source: APXvYqyY4BJ6EvGU3fU0SQWOn7TzKnJLuB27uA2MtBb9vCzzk0NjRLnqMrKqOo8QHtGaubufnm6pUw==
X-Received: by 2002:a63:18d:: with SMTP id 135mr30737492pgb.32.1582604720763;
        Mon, 24 Feb 2020 20:25:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls716288pjq.1.gmail; Mon, 24
 Feb 2020 20:25:20 -0800 (PST)
X-Received: by 2002:a17:90b:243:: with SMTP id fz3mr2998251pjb.29.1582604720301;
        Mon, 24 Feb 2020 20:25:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582604720; cv=none;
        d=google.com; s=arc-20160816;
        b=uaz+ncjS/ZqTR440eMSUxleduCX9XK6ObfM2A4KRtvnxws/WYxvJePEjFmMbCnQXU6
         5/xdSblulZE8M77cWRwf5BjhOAh94EAyHgeMndLPuiSU1fXHHCohUawZT3NU0fdUiVSE
         2SiVZ3qZ/h0180pQMVjrs7DcYqegoTGuaKGM7vWHO68wKCVI2OppK+dhX+lhQ64Ab1GW
         CzEd8KjszdZQTPQ97TlHWT74Vl+lgxFQvGUjPQllUdMLcF97SC1XEvrcELZd3vCKpPRP
         5o4RGyfXjvrIFVLXoM2MxIbsShLlAEsUvbZtBaDuYIpvGcbAkx/p5IgMX8Immi6sedTv
         SJFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V3nWmStnvPZrHNcjnbGk3TD16rtsFo3zS9ml9/tupfA=;
        b=uNSem7uLXgmFPHbRHSVz+aYnhitSns/BeU9j5jRz0a/xlZj9A9OagS3j5QfdSy9r4n
         yP0wGo6VaKfOCV0D8i+8FFuuI/c4NbVS5FqOla3a9P0/kuwlZMNutGcAqRAXW8uwn7B0
         Zaj5mxqXjK1K+1OcnBHd5//oLG60UQb/AGnhPO4BMat5hJ03enA1gElXL9KoYgv5ZIvC
         +sLWeaIuHcr5DV4UCzAR6fr8i4dsAv7abN5cgr00xXHh//SRU42oXpGvAXnqHjz/mH6d
         R6ih4XDSlMON31Gbb4LYpZW5Y4uB9+O2ROlxmJZjk2NY1oMFKN5rZeOAl9mftae8fgdG
         w+qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Os+w8rwO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id n20si840430pgl.1.2020.02.24.20.25.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 20:25:20 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id k29so6471193pfp.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 20:25:20 -0800 (PST)
X-Received: by 2002:a65:6718:: with SMTP id u24mr57085768pgf.289.1582604720027;
        Mon, 24 Feb 2020 20:25:20 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x65sm15469700pfb.171.2020.02.24.20.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 20:25:18 -0800 (PST)
Date: Mon, 24 Feb 2020 20:25:17 -0800
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, corbet@lwn.net,
	masahiroy@kernel.org, Michal Marek <michal.lkml@markovi.net>,
	linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/
 Clang/LLVM
Message-ID: <202002242019.A9F519A33A@keescook>
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <202002242003.870E5F80@keescook>
 <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200225041643.GA17425@ubuntu-m2-xlarge-x86>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Os+w8rwO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Feb 24, 2020 at 09:16:43PM -0700, Nathan Chancellor wrote:
> I think the clang one should be added in a separate patch that
> solidifies that in include/linux/compiler-clang.h with a CLANG_VERSION
> macro and version check, like in include/linux/compiler-gcc.h.

Sounds good.

> ld.lld's minimum version should also be 9, what is the blocking issue
> that makes it 11?

I think I've mostly got future patches on my mind. lld before 11 will
blow up on this:
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=build/link-time
(but I haven't sent this patch yet since I didn't want to break lld
until it was fixed, which it is now, but I got distracted by other
stuff).

Additionally there will be LTO, but LTO will be version-checked. Then I
was thinking about the orphan section handling, and there is very
clearly more work to be done there too... (i.e. the synthesized sections
get reported by the orphan warning before they're actually processed by
DISCARD is some cases -- I still need to isolate the behavior and open a
bug.)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002242019.A9F519A33A%40keescook.
