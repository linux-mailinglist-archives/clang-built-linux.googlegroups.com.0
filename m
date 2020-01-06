Return-Path: <clang-built-linux+bncBDEPBSN75UNRBIXDZ3YAKGQEUJW5NBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 623FC131B27
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Jan 2020 23:16:04 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id o5sf21538840oif.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 14:16:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578348963; cv=pass;
        d=google.com; s=arc-20160816;
        b=OVYhDFS0+PYXjLZyfHbACMyY4gCYkGUEujT8J82alTLAxhJv9/0qXzc0FYOxEmTMHz
         dukonSFXKcGLMElyePvQtn8wKzLjwx7L0id/Zp1O19yU8Gcqu41oHI3aLe1ZzNA7hfru
         D30hvsi/K2B0ObG1Q8X+/UBHjMgHWlztico7Uchwm9J6RLOMoBkpjaBHTq8dfJ3dUh19
         BFi3bkkzyCM6UV01YujFWHuq0AXLtzozeP1VLSETc7Z88pgvs5Cqt9Dywe7XQdz/lt+i
         GBUEGecRiz15wSdbKyK3PY5oWPW1xM2jM3qGUWmZ/TIeHwfTB+uZlIWMdLe9ECwdES13
         CMNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=62t9Y2VCRlFIJceUlVMbebqEkhVUVh9iwoAQ/x4y8+U=;
        b=TbC+xdpoQiWeaE6y3FQMiAICgWy/eKpNJ/ya2Lv2jsBrv1QWWCMN+f4PEdRyDUG2tw
         W4LJ9Rvae5U5coseh+/PYvP7Cht3mERXegBEvW6Iztp2m9X4FEnoIz3yIH2cHRlQFA0o
         iJDg1g/tGeXPzSMBaSTSUGnIVoDlrDFOxiqbsPB9Pc7eHSl0ISE+Y9saHOKAl1sAJ1z4
         aZDIk2r/B/G350vu27MbZ3ODQYJU5F+hD74VWwPRLqCW71hX0esyr2bqIq/oiC7buMLC
         btpStzbrtGVEhJHgkJELAZ8cwF2ezlENUBiOEg0R+eeQQxSx8hSTOETtz0wjYdkHgqK6
         oQbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XWhdykjF;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=62t9Y2VCRlFIJceUlVMbebqEkhVUVh9iwoAQ/x4y8+U=;
        b=KjT45bngvaODdC/NkspcVOINls1jcNDDUxjRrcaA5ctXlrTJwXHYAy30oP6onmq753
         xMLCyD9YUYSvfq8Yg8eDEsPxPc6ISrPaOwX3ba5JqSlzaoRiVqcj3wneeuOoK33Lw/5f
         AghWyq3VmWHZzIGK5gQjL8kpxpRkEerTgWQ3CAvlNUhQdVXy4OK7FM6dBCcttAHdyLGt
         j2wVz+akEEkTPrTVoDonGYWpShZ4GmRhWmFKBAaPpdJbIr9hHBry+mUvMD0jZ72hpvi4
         C7k3up9comfFUkExg1W0A5OVpZuR1w4Oh4Vy/WRPgex36Rx0RQMJr2qFppW+UzeCwget
         AB2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=62t9Y2VCRlFIJceUlVMbebqEkhVUVh9iwoAQ/x4y8+U=;
        b=cg5vw59Ki6YXax2MxZhtgJDXKhQKiCl/4MTkLuJ2XuVNSW43ZvfiSUOqobKIt0+Tmy
         9NveZz/7nLA6BV7NwSUMU1RUAnLHIJwjO8Kssx1BXAaDvXSBJ5LhmtstO69Gih5un5nH
         RmvkhuxJsa1cNJMnPTMChDmyCVV2mA6qKNChWlj7zBzBi8dzg4Q0saDmYx8g4D8z7qqi
         JHXs0aS4EZXrAfTn7BV6yefi8mM5ivzFPqrJXmQk2bq7rM4Api/0IDnOP7ooLI5O/NIE
         Q7385gFrA24MLdZxk0G923RzTwNxBsew+9Ge4VqCmEqOSHgDMtHw2yaS80VqUaufNeLD
         2A6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=62t9Y2VCRlFIJceUlVMbebqEkhVUVh9iwoAQ/x4y8+U=;
        b=dO9VfnGHotSddt3AeALo88LgpT1w54/Rg5liRvboPRWMyg6O0vVJX3kk/5EK5vMSAh
         Ka+4Su9xKNc90gihK1POxjBdOARzctUO57cHr0QJIWjqOd4Kg5ukt2u0Xl14bJjuEpKe
         gdzjseVmo9QfkkaaxyW5x5YKe+xY+a0UGsPudwekNbPxY//17ojhYbn72OFMLqHpXu5l
         UlXnPyeuXZtTBdFKhx5GiFMwAjch7ut7xgcxn/0CVye63hDh2sjP5ze+6TINJ2f/6Pnk
         4uQWymwPZe1/QRd6pV9M5ErXOZCFNVizziBynAy4dXj7UMXGx32DfOHdqFhSkd6ESPMD
         UPyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUdBDiHQRvZnpn7YL35UFZ/IOs8kTnZzPhoZsaASMBc4s2cr8jv
	8rkf6l9OU89FlhMscN+8WhU=
X-Google-Smtp-Source: APXvYqzOtFIhwlkmIQLdhQburjRgMADEUvX4SPpuINVtKT7K/hv3EwlJRPIqnAk2mRSbGfvl7DRAZg==
X-Received: by 2002:aca:ed57:: with SMTP id l84mr6687076oih.8.1578348963028;
        Mon, 06 Jan 2020 14:16:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:895:: with SMTP id 143ls2180383oii.1.gmail; Mon, 06 Jan
 2020 14:16:02 -0800 (PST)
X-Received: by 2002:aca:814:: with SMTP id 20mr6716792oii.159.1578348962720;
        Mon, 06 Jan 2020 14:16:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578348962; cv=none;
        d=google.com; s=arc-20160816;
        b=N7wKgzvxtcdDDTcdQ72sWvMQ7gs2QSUNg01bLZqsXFu7MHgK1Ybbor0I0UUPHNsjok
         E6yx7Kle2+xID9YQP89FT8cwoypoisbMkyoKtoqoBTFAQqZl8CGylj21K7iBCBVVfqS2
         qODITSvQzGvVK3GulYvt/RmnivIS7P4Opov57UqJqKF52JcBnjW85G8BnRIGNzYpNI13
         hbRwu0hf0L9eGSVfWy/hExJsYXHkWXZxe1R6s49EbcPfGzHFHhNFHQKbn6ZqHuMkUNTK
         98ucRIixC9x3N16ZRJsQ8TDg5LNNtZcfJAkk8ouXpGn9N0rxGdV64X0/7L/CYAM1rr9s
         nXHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=iZFmEkhCTphA2jcs6BM5crnTey6oTYkf7QCSnnJ3SOw=;
        b=mZG7ofdxmxfFYdVZhm61NWfhKgQ7d4Cs/1Qrb0RR7LV0QcohIGoacDFHU808lgyj9D
         mUgy9E0pb582mymbGC9lH2FKD+Cobtpsc79odPf5kZaFnv2Q2lYrYJt+PZ+qhvpGSu4z
         RQ8eoRfUsbvbZaMOnZuKMU4J4XV+gC8GmbikNr/XiRzqnV0nQS0gqlVN+LPZNDCnAGn8
         alIG2GZS1ROfQ/UIUHuGtaJbBGaRKqkYn4ASwPekiF+qZ3hsq319tkOGQWGIq9p9LoqI
         dnDaY3J3KdfkSehxIQVFdkI6JxSxAKo0F4UNAe/RpcJvZIzTwWc3mlyjgGdimZ74XUFh
         ZvaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XWhdykjF;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id p5si1649719oip.3.2020.01.06.14.16.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 14:16:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id u1so18891537qvk.13
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 14:16:02 -0800 (PST)
X-Received: by 2002:ad4:4d91:: with SMTP id cv17mr71977440qvb.101.1578348962288;
        Mon, 06 Jan 2020 14:16:02 -0800 (PST)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id l4sm15904039qkb.37.2020.01.06.14.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 14:16:01 -0800 (PST)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id DB4E040DFD; Mon,  6 Jan 2020 19:15:59 -0300 (-03)
Date: Mon, 6 Jan 2020 19:15:59 -0300
To: "Maciej S. Szmigiero" <mail@maciej.szmigiero.name>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	Dennis Schridde <devurandom@gmx.net>,
	Denis Pronin <dannftk@yandex.ru>, Naohiro Aota <naota@elisp.net>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] tools build: Fix test-clang.cpp with Clang 8+
Message-ID: <20200106221559.GF11285@kernel.org>
References: <20191228171314.946469-1-mail@maciej.szmigiero.name>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191228171314.946469-1-mail@maciej.szmigiero.name>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XWhdykjF;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::f44
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Sat, Dec 28, 2019 at 06:13:13PM +0100, Maciej S. Szmigiero escreveu:
> LLVM rL344140 (included in Clang 8+) moved VFS from Clang to LLVM, so paths
> to its include files have changed.
> This broke the Clang test in tools/build - let's fix it.

Thanks, applied.

- Arnaldo
 
> Signed-off-by: Maciej S. Szmigiero <mail@maciej.szmigiero.name>
> ---
>  tools/build/feature/test-clang.cpp | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/tools/build/feature/test-clang.cpp b/tools/build/feature/test-clang.cpp
> index a2b3f092d2f0..7d87075cd1c5 100644
> --- a/tools/build/feature/test-clang.cpp
> +++ b/tools/build/feature/test-clang.cpp
> @@ -1,9 +1,15 @@
>  // SPDX-License-Identifier: GPL-2.0
> +#include "clang/Basic/Version.h"
> +#if CLANG_VERSION_MAJOR < 8
>  #include "clang/Basic/VirtualFileSystem.h"
> +#endif
>  #include "clang/Driver/Driver.h"
>  #include "clang/Frontend/TextDiagnosticPrinter.h"
>  #include "llvm/ADT/IntrusiveRefCntPtr.h"
>  #include "llvm/Support/ManagedStatic.h"
> +#if CLANG_VERSION_MAJOR >= 8
> +#include "llvm/Support/VirtualFileSystem.h"
> +#endif
>  #include "llvm/Support/raw_ostream.h"
>  
>  using namespace clang;

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200106221559.GF11285%40kernel.org.
