Return-Path: <clang-built-linux+bncBD2IBN4NQIERBUWH4SAQMGQEK4NWNQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6525E3265A2
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 17:37:39 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id p15sf5075682wro.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 08:37:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614357459; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZCy364LaPjbS1xdpIHHrE0VdoPORSmTtUNICvvORrWJ33kOABwqxTp1SMwV5UQUDO
         FHYij6326ihYVmSgYrTeKTj/pkMm9IgiRxpyOFvYiQiAZyB1JCywB7JRphFWraztDfVR
         p2zxSO2nriTIW/TU+1D/4V8zpi59uOWNrY7Uub68RacHi9EmdMn/iWibSaWvkl8MnoYD
         HfbsGzlrRn1pv4TXZvmWgWkSHHNL1DM7U5b8zSYtHzwrjC0GxSi2RVcgaIm5sQOvRKe/
         xJyDLg5AKhX/GHHnLQJVcx921ytRE1DyeSfx1H7VJ3n6GHVjXuc4QO9YHteMAePuvcJh
         7niQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=SwCzb79T+48/txk+ghXOOp1z1dDEmF1OvExy3jazhmE=;
        b=pQufNXjF/mHDvywICJKrjC7pGIm/3gcAejOfelbPKJJn/4Oz1OelSImvSpIoS2YGoa
         e8ylNDa3WveZpzPUTyD8zpXeflOpTYH9nwDruuV5XScjlBug3Rr9Jc/MCZyH3ausMjkI
         wHImeS5+fFUv2k+HTyfTSR5WqKf8askMBsx7IuA80LGuGFjytJBbtorFNSfM0XyUYAfh
         xqvY9kdvGhpKh6L2G8nj6YXpBtkP4kGgKjfMgtOOXtZQXHEjwAeKYDS3ntO0rAmkwCYW
         IkdrFb00woY0itI7J7B06US/jTJ3VcUUrgp1qP3uZLT8tsw+xhypMi00XL5gBs+geafg
         hzYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ifH+WRoV;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SwCzb79T+48/txk+ghXOOp1z1dDEmF1OvExy3jazhmE=;
        b=oJ08DFJm28IUctTZm1aMenQXNDjGLx5lTN8KF4yvOlyLHQQqoCGGN+BGYZi4kYPrlx
         GsenocvdJ1sekyKUWbAl6K/9DKYZjQDjkr/z8K2uxAXJQPhj/S1ypK+5Bghp7mH/wFmS
         XCtrAHd5fHuBrLY/8JOM5eh0YUCSdyv0Qu9Qui4iZjT8UEapvqdcUzl3gyuP+eBmIgLk
         opbXp1XoejBcEe/gK1Yl7WCDqsdl54WLxs3J8R8og8bnd9LHePZmIsL0gY9XOipWicGT
         1o9iR/mumCaoR69qhf+i1tZ7dRO3ioWDNkSAKARHf4qExawdySTLRC9SBftCeawjFV/x
         N5gg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SwCzb79T+48/txk+ghXOOp1z1dDEmF1OvExy3jazhmE=;
        b=JXYfRBenkhr+AM1T7G7zksnziHgkGzywXCXcHoViL3k60hzXqLiz68C9NkMkkZ6OfC
         fDyhafhCfaUPgYii1pwOtkpc9DTnQmG419JihcBQ3jEdrA/R5Vzv1ONULU+IqZgmbtKD
         5BxueFNZ87S+l//aqFLa0PqKvxyMMGaeete/2vBwNHXxcdYqrsVpSbqJbl5BMacUnahi
         uRt1Hpgd704afGmbNAOrt+oj8Q6hVK/dDuWwi2ChfaVAZRMSa81yMZWVbttYHLtV15Tw
         KE9rVZNlnThR2i+KrSiaub1EvQ0FIMk8cLC/TSQfceUhp29X6wYfOYhLBK5wnTAssf9N
         8hcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SwCzb79T+48/txk+ghXOOp1z1dDEmF1OvExy3jazhmE=;
        b=NpsE9+UtGGOtAZpO3QlQTh9Mw1A53z9HEAk5UBH8dKuBfRTfFCxjf2WatlkZqzNfsf
         WQU6VhshN5esAbPDJu1RxMCWBWsJp76WsWnfo1F+Fouw49a1V11/0tQVLNx7rszzLQEO
         NsMShBPcPQRrDt2SD/hz4JBiunfccwxo99qqZxIY1xgHRTwBNRr7tvcCCh+VOdCeopYP
         7Z93N+aH8cSA/hREbFYqBpiH4G929bW1pzdV5ZPIWLJe7XGmpsTm66NIiJZYqXq8UH3+
         uWfaMg3rxNPDpRBjrVAjkqVhFITLEteLjdAIZqnlkT4piX2YjC6ngpSnTKqrOJ3G4VK0
         AJtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319cgWVeD9tL6BWumKKMbLSQtDblDUK0IgivZ0lHONOlfOKCEAk
	E1C127znmWMglMsa4/6G790=
X-Google-Smtp-Source: ABdhPJwjgXXOPLjhvQvUZt+RkwOMO9cGrILrRlALdu9yXnULl/F3eI7mSbHt+UoBL2VdeFCp2hAArA==
X-Received: by 2002:a5d:524e:: with SMTP id k14mr4186836wrc.9.1614357459176;
        Fri, 26 Feb 2021 08:37:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d1e6:: with SMTP id g6ls10361373wrd.3.gmail; Fri, 26 Feb
 2021 08:37:38 -0800 (PST)
X-Received: by 2002:adf:e585:: with SMTP id l5mr4006083wrm.85.1614357458248;
        Fri, 26 Feb 2021 08:37:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614357458; cv=none;
        d=google.com; s=arc-20160816;
        b=G111vZUeHNGuYfaJJAcT/Cc4U9U78hgBV5WV2A8O2zybMy87f3VzJs9msm29oEeOIG
         ltQtQywJLjiWbyAZ/HIx06MXebUOZq8JkwHfz0K+FX4jk1eUwdD11cCj/71z4GGufc7o
         oJ0chIIDx85arBaAmx1jjYs3VFHUz/SVLNFkgfmM6O3qG6t6SgbOTJLGS3cAty382/WR
         QPKAaau66BkLBIUQ/Qb8uU0O5742qUWl0Jt/+FMWAXR1jl77RaPBaeCPRzdjhW16LX6R
         r3Q9pAErCGia9w+OEiFTmBWQY9jqJHHxkXgSEdMD75OZm1vMtk4zI1T9I1B7yKLKxU0T
         PG6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KMT1d1Gs8BZ9utr+GYuVKfNILn5qh+CRx49B4cHumdg=;
        b=DPW4awH0yX2mMEORqdgFhEVXRL2n9dVZF1qdXOjZWoplg6r7xUvS6HMnOwvOrJPZSV
         412ZKL+2d8BKdy+WNLXNwpWEG+cp0zDYnwXilcRK8olAMCBbTx+zSPo0Z3fe/a4m0Xxz
         J1VPUd+5EiNlPSPqDDyX4DZQgLAlq+FWRPSEf8kBwxLBwJ+PyzuEGr/i0uhKvQBeWYbQ
         sIHZoYTOoRlA8vfJoYiBbc+g0HeMoaMx4jiin6hXmigRjvbWRcj4OUPygnerotJiXrLZ
         xFoep99YjOWwf575dp2gfEwTX3ev6CrTmkAxERxUc3R/u29w6rSxd6gxns826w3mcqOj
         XZtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ifH+WRoV;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id y12si507850wrs.5.2021.02.26.08.37.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 08:37:38 -0800 (PST)
Received-SPF: pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Received: by mail-ej1-x631.google.com with SMTP id jt13so15925464ejb.0
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 08:37:38 -0800 (PST)
X-Received: by 2002:a17:906:5797:: with SMTP id k23mr4142769ejq.489.1614357458064;
        Fri, 26 Feb 2021 08:37:38 -0800 (PST)
Received: from mail ([2a02:a03f:b7fe:f700:a502:29ea:4ea3:1c47])
        by smtp.gmail.com with ESMTPSA id f5sm662940ejb.64.2021.02.26.08.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 08:37:37 -0800 (PST)
Date: Fri, 26 Feb 2021 17:37:34 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>, Miguel Ojeda <ojeda@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nick Hu <nickhu@andestech.com>, Greentime Hu <green.hu@gmail.com>,
	Vincent Chen <deanbo422@gmail.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Marco Elver <elver@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-csky@vger.kernel.org
Subject: Re: [PATCH] [v2] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
Message-ID: <20210226163734.hjfhzwbqzedqjapy@mail>
References: <20210226161151.2629097-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210226161151.2629097-1-arnd@kernel.org>
X-Original-Sender: luc.vanoostenryck@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ifH+WRoV;       spf=pass
 (google.com: domain of luc.vanoostenryck@gmail.com designates
 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
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

Acked-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>

Thanks,
-- Luc

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226163734.hjfhzwbqzedqjapy%40mail.
