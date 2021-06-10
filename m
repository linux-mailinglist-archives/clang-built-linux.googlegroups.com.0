Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB7V2RGDAMGQEM56T5JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id D85D63A337D
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 20:44:14 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id c21-20020a2e9d950000b02901517ff334cfsf947929ljj.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 11:44:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623350654; cv=pass;
        d=google.com; s=arc-20160816;
        b=D2KLjvOFO9diTzj3OopdWnt2E2cV6fNiZqeAcmu0qJz78usEH2jUaocx+llp3n2+bm
         9eQ4OrC3+3PWq3ildBF2WJSDavOM21ksQgyPuacwxu3nAvpJehgxsM8IEUbjVh7DrLjY
         CZdOInkAtq0gTRYXJDAj6FZjNhU80mlNCVqY4M7tOcRouR/3dUpP00kRXbGButEZK1Db
         BfKVBDT0qce0ZE8+YhJg7E/VcH9izCWMNiOzzsr91KPpchcmbHVds6FlyMPc++itR9qk
         wrF7kPtJsbEmic8JNbGcpBYWgGh1TSBzVBtGsTqv4bmkIWDd28qWaL6STkWqw4OMxxFq
         u4Wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Oz5N2aW9s2qaEB7IfOjJuhIes6jRXJt451wHzlAuEmA=;
        b=QbUDEoGelIf7BfagcqiWZIew1JfNRi2mn/JdJ+f29p6h3NoKWNdX4CpKbbD47VQI7b
         vcHeViF1PrvMrRnR1LZUqXbM/Akg8a36whDPs4A0wD0UtERWuKadkrOpNP/4fRuCgfcP
         qF/RAK9M1wLbjZlH9OKElWpSUUyvEev5P+DxU1RaqtRXSDSjSQUlsLH15x+G0z5TJFPI
         wygIMxXT4Zvjp5u0ICqCheKkN8YyRSHnL5zFRuuI4nm87lZVLZHKikKnYCVtigxmvs0M
         zdBRx8M6rt7pBQgHTTghgBHlLLd937e/KSUQjYNdefMiKlCeefmguArOzRpOR9bf+WjV
         q90Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="niWX7k/K";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oz5N2aW9s2qaEB7IfOjJuhIes6jRXJt451wHzlAuEmA=;
        b=Iwb+07ESJdRlGJAh6myF4b/iapnZc9P8LUAu++aE/+aHSbVq9kRttl6PsfyfyEUWrs
         IP9J0WkJGRkQPa6+SjBPqXkCRi79To0hUuBcKRJjnUY15Mx27vS5MlqPeQZdl2/32OOv
         WSdyU+UjtPT1XXtofR0u8psq4XwXGji5MWojf17fuxrhkg8P4lodlZqgCTap6xbBFIyD
         ghpipMc/Lx2vc/3QT1qMjomlGk0sYNtJFCxq/LiyvAGf/b+6S7UTQKwiY6frYgtByy22
         m7ArqtaQ+lD41UQIPRrspgDksYF5Z6f672hXLb9YKwRBgkOEvVHAapsIEfoGQtfaOLPS
         rKZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Oz5N2aW9s2qaEB7IfOjJuhIes6jRXJt451wHzlAuEmA=;
        b=GkUGqx/G61uzhIBXeFO2H6Efb/6RxtseTQzFm5AmGl8y2YHktDZrHO2yIXCCjhFsVp
         H3UJxrIFhHUo0qNDecBckvnfadQi0aIHbSdubyLfj3xc1/dep9sT3ssGR1z6pJcja/Y1
         vceE0ait0SS4sgQ6Gzf8LYKSjM4J12EVNmmylpBnC0+2FSFr4myan0t9ccf9hFhplTNy
         2Pf4IY897SjSaPAVW/dDyOw0LlX7s0ZOF9nbHc+U1GOCrhM0PXPPlkAGuCxh9Pj/cQqI
         Jo3QAV9h/w8y7EICEPbQrj2MX2qAYZDE/Hnr9lp28DgYPOai8FmoXVsvx3+Vwi0H/pDF
         E45g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533wycd8RwXQ48gZY4zyXImerJAC+ddcThTdjP80bXzcISbup0t9
	j18x3TimAvWvyQEPHh0ltxw=
X-Google-Smtp-Source: ABdhPJxH5BEJw4w16SZR1ehQzbnh5bIUd/v9l1nDCOMaUW03q3LsfvkD2Eu3ChPKKY/PNVegKPLNeg==
X-Received: by 2002:a2e:b170:: with SMTP id a16mr3295728ljm.67.1623350654467;
        Thu, 10 Jun 2021 11:44:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b09:: with SMTP id u9ls1113825lji.9.gmail; Thu, 10 Jun
 2021 11:44:13 -0700 (PDT)
X-Received: by 2002:a05:651c:2005:: with SMTP id s5mr3127318ljo.417.1623350653424;
        Thu, 10 Jun 2021 11:44:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623350653; cv=none;
        d=google.com; s=arc-20160816;
        b=XHxMGbZ5No+55KhpzZh4GBdFzaqsIlpMoJ01bgrIB4PeTEio5S5onWErjVNLNZExp/
         SAr1dMRWKTupR0PTLJtO5rOkDC2XwBthoTRWkR8dk8S2k0ennCSZoHHrBGFSPCvbn3vK
         +mF2tswT3EZNnzlJw16XcbuILlVPXKnFSYYJ8dGYESD2UTD2dBcRBiVsjkYwMRHAZiBe
         MwsC1+ZVv1uT76y8XlXvftns33xn0gDXzTb3y8nnpMBriu/cTJ2IDzkq7j9fglWpDwIy
         I+t/hBd9Jui3+wXnOe4ylo24L0tQN2fJ3U6o1N9E7PxvgeimXgdBVaX0Enx66p5ngLdm
         kksQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Av0VDrjTWxCk/CljDRNDCub1sCxNvQ1GxDN3sYJG65M=;
        b=U9+2APo5kr/rchC8nqf/79Iy/nT6h0KIbZZRPk38AS/jEAYzieB4oBNOG590StXW1q
         QfC+/XZaLpfzBXR/2Ha2B6HqGgaj4eXX3U0OwBVBWwlPy1MZxTTZI+P/IEl3ihmWMlrX
         q5mEvzHwGrsMeYzNXD0JuuqfF3zOJjdsxKB6j+QXciVc6ftAv00t30tcy1iknjEkczsn
         Our1kkB9oLU34MzIejFmWIN5SlvOBOeTJwi+1SloPOgfwe8//8rGV5MO6njtWRgV9jss
         len6mdxe1Gq5snPQEEsBAhWE8ecnp1AqFdDetkNxmUK3RTdWuIUUvePGJPPnZ67Wus73
         QDGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="niWX7k/K";
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id j2si132204lfe.8.2021.06.10.11.44.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jun 2021 11:44:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lrPec-001wgL-Js; Thu, 10 Jun 2021 18:43:51 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 603AA3001E3;
	Thu, 10 Jun 2021 20:43:45 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 4078520299B51; Thu, 10 Jun 2021 20:43:45 +0200 (CEST)
Date: Thu, 10 Jun 2021 20:43:45 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: x86@kernel.org, jpoimboe@redhat.com, jbaron@akamai.com,
	rostedt@goodmis.org, ardb@kernel.org, linux-kernel@vger.kernel.org,
	samitolvanen@google.com, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 01/13] objtool: Rewrite hashtable sizing
Message-ID: <YMJdYdCR0vD2t2WC@hirez.programming.kicks-ass.net>
References: <20210506193352.719596001@infradead.org>
 <20210506194157.452881700@infradead.org>
 <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="niWX7k/K";
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jun 10, 2021 at 11:14:51AM -0700, Nathan Chancellor wrote:

> This patch as commit 25cf0d8aa2a3 ("objtool: Rewrite hashtable sizing")
> in -tip causes a massive compile time regression with allmodconfig +
> ThinLTO.

Moo... the allyesconfig builds I used it on were much faster, but that
was on regular GCC vmlinux.o after linking.

> Adding Sami because I am not sure why this patch would have much of an impact
> in relation to LTO. https://git.kernel.org/tip/25cf0d8aa2a3 is the patch in
> question.
> 
> If I can provide any further information or help debug, please let me know.
> 
> If you are interested in reproducing this locally, you will need a
> fairly recent LLVM stack (I used the stable release/12.x branch) and to
> cherry-pick commit 976aac5f8829 ("kcsan: Fix debugfs initcall return
> type") to fix an unrelated build failure. My script [2] can build a
> self-contained toolchain fairly quickly if you cannot get one from your
> package manager. A command like below will speed up the build a bit:

Would something like llvm-13 from Debian be good enough?

$ clang-13 --version
Debian clang version 13.0.0-++20210418105309+a0898f0cecc7-1~exp1
Target: x86_64-pc-linux-gnu
Thread model: posix
InstalledDir: /usr/bin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMJdYdCR0vD2t2WC%40hirez.programming.kicks-ass.net.
