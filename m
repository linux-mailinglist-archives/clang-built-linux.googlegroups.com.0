Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSUE337QKGQEBQDXBCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED3B2EE7EC
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 22:51:07 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id a206sf12842309ybg.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 13:51:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610056266; cv=pass;
        d=google.com; s=arc-20160816;
        b=xxiswD0nGE+WqvCZfTMM366HuU68qQTRB+BNKVX97XyYWnDaw7MULqZ+WiN5pISS1T
         ZiCkNUQmnF382jlYA44M9sz/+M334A8D1521jZrBSxJfxTfTu3LbvzOoadz3/40bWw9P
         MDQhiOj/jo/DFZCjA1GqO/gjlhf7o/V+UDKt7BKrX+SAm2NQ0gW2nvuh7DGC7QhdQ4rv
         Pn0SkoSDpHn4jUgZ74yf5myai0E9NKRtcU6iH8a7/dxcgWQTCNY7oQQjBBlrEnhSQjW7
         WH8tHT4fTe0oTGCXVKOjQwcMi9IHgExhiDumdPmF27Nn/QqaOxMQ4OdODu2qVBMe7LGh
         3u0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=a/btFzP6NUGqr86IPgOnRM1DhSWyGmSCcob9FWho7WA=;
        b=UBdde1U891zVKb6mbmA/bkUaTccOrAALrkaheCdwHvCNvp0G1YJXOy2aP4sCtHiv4F
         jj3snB36IUUFHdQP2oFwaXNIYJlOd1pNQJikTFuqV//2VmRPQ2R7ibPSxxRXU4VQrEkZ
         B/JvIdK53Uy15vn8VW4EixNRFLer8cxkBzvY2EOTa9aKKXFH2LoWTdAMH03Mhx7fkP1S
         IywYuKeTAHOMacygE+hN31EoNA7Rd0EV6/mnAgBZQSWrFjM+1FbhXaJa5QsVVfSoxdDW
         yow6/Z6C7A/l1BT9FMV644rbpxty2n6bA2OAEvNmzZgpP02hYObgKAOoOlMkV8ENHOIL
         9lzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Ve/7Nd5I";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a/btFzP6NUGqr86IPgOnRM1DhSWyGmSCcob9FWho7WA=;
        b=YN7eFJzag4az3joz6aHiXuYjt/a92H2PuyjWaThzQobaQ1Z0NeIKq+Db8vX8XCBKgm
         D1PY2j0j0Nd0CZ9SFDYCXi2r9Ht0n+5WjvuWvP9NrmL+iKcxh25Yi6a8tPjSK4btO4na
         ULdrnAncSLVDlfVx9sDARx5JXzbJfadRRu3nn7YBuqIJxPmf74mEnQkMPha0otqCdPMP
         75lm79SAdn2FUa9oCPtl3cieWFV+4CJ3VExrBcM7Upsun85USxv67ftRcPcFl0ESl4Z+
         GuCUB/m10iZ0H5iMgfVgg5hjKB7pIDE0bQB+cKQi3cM/Ay8a4BhHTq1C1sCQHRlq6g+4
         E9gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a/btFzP6NUGqr86IPgOnRM1DhSWyGmSCcob9FWho7WA=;
        b=JKqWEJgYTdm37K2NZvfFwRO0kqxnwGBgsOmNAySOuImMVqVgMV3pHCmiASgYQWT77x
         BWlBoxw8tbFG8KwyYCh3uIRntWNkMoqAiv7WkwPipnGU6nuL5t4khRkpfxm4M+wtC1NG
         NjctbrvC0NDgldBywo5ees1GIksyfsd8kydKLU1nRcUnQl17pwW2LtbNF9bOErffKxTA
         kW7ItcRB7Z3PDQw4/mXjBV08FGjK83DJQG43lBaaALwtCHjLr2InZ2fBmFdlAnnzNSL3
         v4ty2zmtTUt1V76dovwGRsd2Wr2TSBEQMoUmOwMUhBUOgQCJubFWL8xWEcN47s/LgDCT
         W4HQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530izHS7yt6lYU9wKcJGMa35KCXIsiqsg40Fdby3HwGPmGxeviZQ
	ueff/smgp1OeUjValqv/Y10=
X-Google-Smtp-Source: ABdhPJxeEbFZXSRF+XDmZakE7WEgqFBfOXqnnxnX8L/roJn3GmzutB4ZFBfr9szpGcEMz1ZynUFmsg==
X-Received: by 2002:a25:c60a:: with SMTP id k10mr1330247ybf.104.1610056266294;
        Thu, 07 Jan 2021 13:51:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:f80c:: with SMTP id u12ls4520066ybd.4.gmail; Thu, 07 Jan
 2021 13:51:05 -0800 (PST)
X-Received: by 2002:a25:c6cc:: with SMTP id k195mr1165655ybf.503.1610056265859;
        Thu, 07 Jan 2021 13:51:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610056265; cv=none;
        d=google.com; s=arc-20160816;
        b=KglnKr9MnhbF0ZJpkl6mGsaBew+1/w2RGKllEnpSJR941PxVajtGBslsSe3bg2ijSf
         YKkp5GkMBl1YUlyQfuEnh9g128O9VEmfufJnahcAuWc73S+4V8xMlnHlXPU8AhjPc8ia
         2zqDl+PdOAwOL/oDRzVbpTYMB+KQdpM4LrqLhEUTTawVDa0sut2GrvhS6WrNF/QR4JGK
         iReJoRqb9az05ecWqpLcLTZOT4kSNAcffFbRtx/IdzpYL2W4xgCuYM51AkuvoSThrhFz
         DwUYEPzaIuj2SIJAJmwLgVJzPUR6VRJy9nCzHPde9Z3dC8+IB/qe1LolREcBzbxdAe3S
         oF4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yYl0v+xaEIAu5r6/bYBSilTtfXXwd7aNC1GvRalHHZo=;
        b=lzifiE8RJG58Zo9jdaAV5RqreJLs+Nfz4rr9blewJzAbYcOkBLBfbkXN5fupPTTtp7
         OgnnAEPILInoIuq/T4tRBgvW1icHvrVSHLXXsISQUJAZibatWOhmeSY+RAtKjN3ct+g7
         +vTGjXUZN4uRsFR7xkv3fVCHUOGeS7KeO+wyo8URC3JHWMq06UnIVdKE+8azEElUZ9k0
         jIUS4DfTeQgFDN04pUAggLysFN0rLXSHXVEo7uDixY8HbqE8R2oY08ARgnsLl/Wddm3H
         tSXNT23+1Q2lEkzdxXEAGO4X/wrtUkHb5WWrChlacM2Y+sMTyI39HJ/VHjMbzBOJu37j
         bjnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Ve/7Nd5I";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id e10si894974ybp.4.2021.01.07.13.51.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 13:51:05 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id b5so4886567pjk.2
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 13:51:05 -0800 (PST)
X-Received: by 2002:a17:902:be11:b029:da:ba30:5791 with SMTP id r17-20020a170902be11b02900daba305791mr788751pls.13.1610056265144;
        Thu, 07 Jan 2021 13:51:05 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v1sm7737287pga.63.2021.01.07.13.51.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 13:51:04 -0800 (PST)
Date: Thu, 7 Jan 2021 13:51:03 -0800
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 6/7] vmlinux.lds.h: catch compound literals
 into data and BSS
Message-ID: <202101071350.B643907EE@keescook>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107132010.463129-1-alobakin@pm.me>
 <20210107132010.463129-3-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107132010.463129-3-alobakin@pm.me>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Ve/7Nd5I";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1036
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

On Thu, Jan 07, 2021 at 01:20:55PM +0000, Alexander Lobakin wrote:
> When building kernel with LD_DEAD_CODE_DATA_ELIMINATION, LLVM stack
> generates separate sections for compound literals, just like in case
> with enabled LTO [0]:
> 
> ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
> (.data..compoundliteral.14) is being placed in
> '.data..compoundliteral.14'
> ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
> (.data..compoundliteral.15) is being placed in
> '.data..compoundliteral.15'
> ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
> (.data..compoundliteral.16) is being placed in
> '.data..compoundliteral.16'
> ld.lld: warning: drivers/built-in.a(mtd/nand/spi/gigadevice.o):
> (.data..compoundliteral.17) is being placed in
> '.data..compoundliteral.17'
> 
> [...]
> 
> Handle this by adding the related sections to generic definitions
> as suggested by Sami [0].
> 
> [0] https://lore.kernel.org/lkml/20201211184633.3213045-3-samitolvanen@google.com
> 
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Suggested-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101071350.B643907EE%40keescook.
