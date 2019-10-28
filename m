Return-Path: <clang-built-linux+bncBD2IBN4NQIERB7WQ3XWQKGQERLTMDKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 09303E7C35
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 23:15:27 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id w24sf7343073edx.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 15:15:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572300926; cv=pass;
        d=google.com; s=arc-20160816;
        b=FxYhdvQKabrW/f2mPWSThQMSQGKH9pmoRY17lnKSFusKAZJfTcwu+iN6lLzun3XJ8S
         KPARI1xyzxAHr3qrFM8lLZmTbdmh3VARgrvPFx5vo/H96upwY09lY9Z7EZE61gltDvpH
         hURmH6fCdqvNGVIrpt4mFCA6YqVQeGlPZOo80rgK58drlmlMkrmnHe7fsAx8FYLER92E
         h7LPI4Z/+eqlN6ZtNdglsTgbquAH/d+BG0tR4Um+Z6PeqcSEOPybqS+iywO5Omfsk1m+
         AHD9l8V88a0L+HbM72hEtDZyPTdnEa0ffAEUQUPC7GWplfrx8Hv9bwvfakglu1sLQ39X
         RhMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=2rCffMCkNrpLDrgMUtbo03K9RxNUGSzvvqtben7Iqgk=;
        b=JUvmKDwp3I4dXRKwcU3CXZGS1WnWS+JGcXdXeTcLJ27rT+zPnOIDucShl1mt0MibkJ
         cFBX3gsCDH3FYDs0VxH4AnTdrnosHh1I15O7v8iaJdf4BPcpbdA9yNvgqk9XdVihcmBj
         uemdIAfK4+4qLXG/Hu3ZLCbGEzGPKw4y/uWFiPukcFIlJ7kJFAxas6jno+DyNaMuibD1
         t3WjaXBPdXlJgtC8dyXnQl7GWEdGqixr/ADcuvGNJ7jMf0fLTWKsXcYS5U06Tl7zpLGd
         H+BYU3ZPMpABaFhvvR2+tOAPYK0s04mZNcxa2SVl4hfjqNLaqYsY6ZMGwBl5e3J15hVN
         y/9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pfLvQBJc;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2rCffMCkNrpLDrgMUtbo03K9RxNUGSzvvqtben7Iqgk=;
        b=tOWhepXUufRhqnYIKwDIDJ5IJwzV+YizfiIN8CAOxLMfcC1ZNJFg2UytTXJJW0Fe5y
         d/QnJIJe/O79wSRFn5A6WAz8B4EVdYv+1Id/+rhbT7+q4SZA2oCOALjf0j4Zdt/nDip+
         +WCBVsGv94QAshCL3+qrT+jGlXrn9f6OLFbfSe7SQ8TEYcnVXlxxLM3RwkdLWzS2LhIc
         5NTYAjeSniR1SOtxkBwswxOIPHBZauIZLsjOJYUi4PgUJm3Co/W+301zzieaulsM7xJs
         HswAG4cyYaSV1Nd2M/tWm7oRZZ1ygK+HLiyFEUigVXkjz/OgiLVffacQYXR2F1q56r72
         7Rxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2rCffMCkNrpLDrgMUtbo03K9RxNUGSzvvqtben7Iqgk=;
        b=cr5kRQN9CyQTQ4CtTqt61S8mJPoAgNlKiJ1FYBjSDDQlEszLtGpwDgDxr+auTt0Qvf
         hWGm+TrglbhkCEKjQRLy+/CNmfIemoKQ8ojj13RucfKw+X9iv37t4n2M5Q9jgZTYqlaR
         ClumcbdW/f4J2yO3cilLU1qM+GdkuWeQOKPu0C7e5cLPe5LleQjpcs+L0SvPe22N9IRV
         BP3FyGv5Ku4VFz6+NIbd+oQH4MGP7+aGWdgvWAw0Hg/qpzfdntMvVOADudDyUqlTZaWA
         NM9GVqUvhVQTVOrhJBs57iTDRhS7Y5wKneuCdBSD+FLY2TaeVNFzy+H+y8sr8cw/5Tok
         etpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2rCffMCkNrpLDrgMUtbo03K9RxNUGSzvvqtben7Iqgk=;
        b=X0po9aLOBWuhhptmcj4SJBeka+IR10bF3BEU3ytWqHPFhcIvPQLBbAfHNzBE2WRWsG
         yNisOiA69Xt5EnD8ahE/rjfshxd9UBMZReutKPoEJ62crX08sB0epbQe1VqwEa6m6R8o
         PMJ3qd20XI/EcW3iOzdQlxgefhl4uu5lUxHaRyUwNWIFD2aTUW18Rxwak287mLeJ6Xop
         4/32Bt5Qoy5PeJeXyfkJeVcXhGdFPsl0uwbudYWMHhiHvrlWiTnC+gseFxpehebVDMEz
         E6TDYbR8amu/KWuetriru5eWBoW1k55voYdfEYNhHzjnUNwXGkS14WNndIDn/M8KmOap
         zoxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWMTE0lp9yRO3cNLeyBsxPNlyn6cCGGNgFVxmuIqKWMsy5duh6l
	qzasR4gb/evRSh/eK5R9io0=
X-Google-Smtp-Source: APXvYqxflXKnSk+qdx0VeIeL08pQGmJCGcWsrd7z6CXdFA/e1adjZNN5SmUbSg//qs0MtoL7igvbvQ==
X-Received: by 2002:a17:906:1c87:: with SMTP id g7mr126089ejh.189.1572300926710;
        Mon, 28 Oct 2019 15:15:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:559:: with SMTP id k25ls4344619eja.5.gmail; Mon, 28
 Oct 2019 15:15:26 -0700 (PDT)
X-Received: by 2002:a17:906:6848:: with SMTP id a8mr146731ejs.306.1572300926190;
        Mon, 28 Oct 2019 15:15:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572300926; cv=none;
        d=google.com; s=arc-20160816;
        b=yrhIlSShF+Ap4AiGzKLsdSDhmmHVwZjHNMHABkQyagvIeJ8XxudHRJQ+dpnXSbRnkE
         7kdjsh6txJjKjBMEW8Tj9/k8qamiY6lH8Z0hI37S047hKhO18ks7q87P3Bsm7ddJ8RgB
         kdJgWxFRLC0uKsMtpiW1XqVrefCQ8W7ZhRdRfypzZjNVqBImY0TqygbQ0B3Iv/BrHuyi
         7VBl/LBVA7DTl9jalTz6vE3oeFZZU2Q/D3aFCzyAPKJhoEKt4nKCb208ZhvQe7xxma0u
         SB3svi/KwZKGmkCibC6og8kCEgcVXRaTpMCHHA340pDGzOPGr2aNQZcuITiMu0y0F4Rs
         8svA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tkzHQ5nWGsA97b2njnFWgc0ejNb84Tf9K2RtX0P4FFk=;
        b=YhQQ5YtdsY4h4pSibZZCmPeGtTaqGDEaBUApGpgXkGG2nbL7lSWiv6270yxfQwj/xm
         yda80M4UzBWO661sVqJ9vkJwCquDKHq/NYZDL9KzgWtVnpr9fiaBAWzT+9h0fXAM3EfS
         L6BKoWCNECQNFKlt2mKbLc4VpPoTch1HwjM5xq/7TIsR3zOdX1atgQYqtRUt46B0JtcS
         HWgaw9X0uTQcrA/HCEivUDnGY7FsUObLUnZ2b/LYbtaQwNfgaL/vTCuQ1OE+yeGlzSQv
         B9Pl2n8fb6tCYEHNN6ZjR5TKM03CzPZ5ZwucZe3DrF6iBA9fTCkkcwZdTXKgIKNYk0GO
         /ryA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pfLvQBJc;
       spf=pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c31si775657edb.0.2019.10.28.15.15.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 15:15:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of luc.vanoostenryck@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id r1so11519103wrs.9
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 15:15:26 -0700 (PDT)
X-Received: by 2002:adf:b1d2:: with SMTP id r18mr16228857wra.138.1572300925969;
        Mon, 28 Oct 2019 15:15:25 -0700 (PDT)
Received: from desk.local ([2a02:a03f:40ac:ce00:6dcd:e18f:2cd1:7611])
        by smtp.gmail.com with ESMTPSA id v81sm1068082wmg.4.2019.10.28.15.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 15:15:25 -0700 (PDT)
Date: Mon, 28 Oct 2019 23:15:24 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Joe Perches <joe@perches.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-sparse@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler*.h: Add '__' prefix and suffix to all
 __attribute__ #defines
Message-ID: <20191028221523.vlzdk6dkcglxei6v@desk.local>
References: <7a15bc8ad7437dc3a044a4f9cd283500bd0b5f36.camel@perches.com>
 <CANiq72=B6XKwfkC9L4=+OxWtjxCp-94TWRG1a=pC=y636gzckA@mail.gmail.com>
 <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <19fd23e98bab65a1ee624445193bd2ed86108881.camel@perches.com>
User-Agent: NeoMutt/20180716
X-Original-Sender: luc.vanoostenryck@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pfLvQBJc;       spf=pass
 (google.com: domain of luc.vanoostenryck@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=luc.vanoostenryck@gmail.com;
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

On Mon, Oct 28, 2019 at 10:59:47AM -0700, Joe Perches wrote:
> On Mon, 2019-10-28 at 18:37 +0100, Miguel Ojeda wrote:
> > Just in case: for these ones (i.e. __CHECKER__), did you check if
> > sparse handles this syntax? (I don't recall myself if it does).
> > 
> > Other than that, thanks for the cleanup too! I can pick it up in the
> > the compiler-attributes tree and put it in -next.
> 
> Thanks for asking and no, I did  not until just now.
> Turns out sparse does _not_ handle these changes and
> the checking fails for these __<changes>__.
> 
> sparse would have to update parse.c or the __CHECKER__
> changes would need to be reverted.
> 
> Perhaps update parse.c like:

...

Yes, this was missing. Thanks.
Can I have your SoB for this?

-- Luc

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191028221523.vlzdk6dkcglxei6v%40desk.local.
