Return-Path: <clang-built-linux+bncBCS7XUWOUULBBTV23T2AKGQEGGQJZBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 127211AAA57
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 16:42:24 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id y18sf144146qvx.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 07:42:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586961743; cv=pass;
        d=google.com; s=arc-20160816;
        b=F6/6BFQRVZXsWjTyOYTMrkjvpxfQvlrOV/7Kv/FTLo8IkJ69ZuLveFQCKBMKClDCFo
         dK1h41ycoWqCQkotYR8U7gJEPTJ2W49u34RikMTsMyv8tWtGHJg4EdsDY/7Gnw08kE1G
         yndIdl97CyARrIFLYCuWLSElCtf7R6ShiYSXjq8Azwpc1KnkaismXhAxj9hxHnscA5Wl
         vSAjWapJ8q9avZHXfM4YK1tA7p0rqMx4hSCaSZFlAWBGtOd5Jtj5CgO48O/f7MrPCa6J
         5G91BHajLcJ37LFeRxDgFmSSbP/y8hYAayUoKchQDWI3HYnlivjJPpu9IzI3//j+nbKR
         k+FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DOC4ZqFSHoCnaNutIJnpTd4CMt4VnuljSGHxpkAx/OQ=;
        b=wMj6mf/+nAyWhcSRl9Uot4AgVCOpIcdevP9fJRbcyiTr1JLMkd/IrNTv5LQFMxXfFr
         SMkGaGDJBgU687n+pokg2OH+np3QUW2P1CtkUGeWs5/S5D2XK6726u4q2oox7Fq/sAb3
         Ds1rCKpmgPeOZ5xkj2KalB7J/+NpcUDTTPCmiuJKTAiHmkrV8Q2j/gDW+iMWcAReReJ2
         e7acnJBqMRLbPakkOyCI6R+KBDl2n33LLVnI1BuqLaYTkMKXjHkUHpIE/F9I6Or/KXr1
         /emCkLHgvWyp2oHchcFmYfp9o53O+BjWN5hGqTY/w2A97m6XHfC23O9zwtKiwSVi82EG
         tRaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rzm5dxhT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DOC4ZqFSHoCnaNutIJnpTd4CMt4VnuljSGHxpkAx/OQ=;
        b=ExtVGn/vkAauXIjPW0NWctHyqPgy/2fOSGp0ARCDtVag7tdz4tJLFZlJM4y1NHIXNT
         oK6VcSQ9PQBsFfVKzX8BZ4+L/49lQ8tqqsH/WxAkn0s84eSMgxVMHv6tOKADP8IL2cj1
         3QWJS4o2GKYcs9R1QIY0LeYfvK5zSGxu8i6QFr47PJJ2W/0cMvv5K3/0YZ1ON2Y1kGF7
         bRRYl+31ECCM5tecTjkxgp9M0pixDqHjuvrNacb359LhIvA6mvWQJsMN+SbZyriOIQSk
         zHO52FFu1sVc8M22miU1hNg1ZKdtKNgKiCjrw97PJjo9WlUQOp6jXnJyvL6x94TpZ6zI
         /cMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DOC4ZqFSHoCnaNutIJnpTd4CMt4VnuljSGHxpkAx/OQ=;
        b=jo3UjSCSAl71hcsu2HolqP8oRS8P0VQrEthxtLT/IRDWU6Xajyic9uff94SLs5eDxZ
         dF7R9C2lnIBFXuzI3uuvr7Xe7nAsn4xD5yU/eJkv7xKkRkMAEiT+kmwg3wzbcRdku0w7
         oD/LYEEzjmG9dIYtYPRcQ5a6bx01yEHiWxV0UgbuQMAcoW+NC2l/BcqMavsJoQeVpNGL
         mzQk+4ud1lT0c85BA72POrrp59YDKYXWNZWZLEbEdZw3TJaiLPLXQokvdmCPAQiOH+f3
         UQG5GL3RmAE1wncAGiFhgctmPzMhVduqRnFXTXFObw5HBscWqHDonLwjYtSKY15+BfmN
         EO0Q==
X-Gm-Message-State: AGi0Pua94YxNed200yB5qMwR/p/uKdFOvgrgv8l89S++JH68xkxGFz8O
	W4571FX297aGjFsWnbmKB1k=
X-Google-Smtp-Source: APiQypIFOAYNLJos8ejDBw7SawzcsJoSBBi1L9/xZYC6/9XTEZx4pbL6IJgLPWeJ5vsbO47bj/4cXw==
X-Received: by 2002:a37:6e87:: with SMTP id j129mr27066476qkc.358.1586961742951;
        Wed, 15 Apr 2020 07:42:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:586:: with SMTP id 128ls4693271qkf.5.gmail; Wed, 15 Apr
 2020 07:42:22 -0700 (PDT)
X-Received: by 2002:a37:a4c5:: with SMTP id n188mr12260184qke.337.1586961742570;
        Wed, 15 Apr 2020 07:42:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586961742; cv=none;
        d=google.com; s=arc-20160816;
        b=PMWWWlTvUg0lHIbrjqIOQ70x0Zj5fB/9iIai03r/GJwt+hmeEVr0fPiX+k/N9Q7QXP
         GcbrwdvnfUW5MERNGAK1pXu1r4Oq5wuOa1lf6tHZ8909mElVgubn3aE9xGEh8enkfiey
         8SMgNPnS0TP3ZYpOo7sonJPY3cnlZIBQYHCz9HT3HCcV5Z4NtHLHebOJMPWRotrgt6Hy
         YhlToiV+OE+KpHmj1eA3sxGr8JLynIVwRW5OGXw6q4qXSqDlXS63nRKNnZ1ZjHbwQx5P
         NaLo3qm5SgK6Arxz4+U0UVM2v/krYN3qqvpxZMIN0VR0NH7gg4S7OSRWzJmcaMsBvhop
         BFTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TrCr8YaKtrXKuZI1mDLlJ9OwmvLg/1PUlN/6+Ie7Iy0=;
        b=bp+rNEGK3k/X2LJflW3qTJwc+r/Khvpg6sxJppn/Q7NE9mtRAOn6Shtp3iw03j7gb0
         dhDUbTI+WHECRPACUmbJJcsI87dhNvC1LBnJrYy6o+FjXjw3zZNXqxylhU4f4tPCBVKu
         ddZVfiHryYxkNw+VA3cwjUNjjhjS6lHDuQz+8mzlqhuBj+rEAfW84G/M7VOHlgiCeBxw
         QpPmk4A7T7//4jvFN3RdaJGUkZHeiXpllkW3agBA6PXc9s/GDEuOEpMCEBSOWm85ShHK
         TeCGieGo06XwGLFeCv/eY1cbGM38j9DK9AKckuIuaetHFpal4B7NUSWP8SOwLWD6Zlyx
         yEvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Rzm5dxhT;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id l23si758551qkl.0.2020.04.15.07.42.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 07:42:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id c23so9360pgj.3
        for <clang-built-linux@googlegroups.com>; Wed, 15 Apr 2020 07:42:22 -0700 (PDT)
X-Received: by 2002:aa7:8d97:: with SMTP id i23mr27432269pfr.325.1586961741436;
        Wed, 15 Apr 2020 07:42:21 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id i15sm2199851pfo.195.2020.04.15.07.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2020 07:42:20 -0700 (PDT)
Date: Wed, 15 Apr 2020 07:42:17 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: linux-riscv@lists.infradead.org,
	Jordan Rupprecht <rupprecht@google.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] riscv: fix vdso build with lld
Message-ID: <20200415144217.cxxdfeeepzgikp4n@google.com>
References: <20200415142959.25673-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200415142959.25673-1-ilie.halip@gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Rzm5dxhT;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-04-15, Ilie Halip wrote:
>When building with the LLVM linker this error occurrs:
>    LD      arch/riscv/kernel/vdso/vdso-syms.o
>  ld.lld: error: no input files
>
>This happens because the lld treats -R as an alias to -rpath, as opposed
>to ld where -R means --just-symbols.
>
>Use the long option name for compatibility between the two.
>
>Link: https://github.com/ClangBuiltLinux/linux/issues/805
>Reported-by: Dmitry Golovin <dima@golovin.in>
>Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
>
>---
>Changed in v2:
>  * a comment line dropped, another one slightly reworded
>  * added Nick's Reviewed-by
>---
> arch/riscv/kernel/vdso/Makefile | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
>index 33b16f4212f7..a4ee3a0e7d20 100644
>--- a/arch/riscv/kernel/vdso/Makefile
>+++ b/arch/riscv/kernel/vdso/Makefile
>@@ -33,15 +33,15 @@ $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
> 	$(call if_changed,vdsold)
>
> # We also create a special relocatable object that should mirror the symbol
>-# table and layout of the linked DSO.  With ld -R we can then refer to
>-# these symbols in the kernel code rather than hand-coded addresses.
>+# table and layout of the linked DSO. With ld --just-symbols we can then
>+# refer to these symbols in the kernel code rather than hand-coded addresses.
>
> SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> 	-Wl,--build-id -Wl,--hash-style=both
> $(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
> 	$(call if_changed,vdsold)
>
>-LDFLAGS_vdso-syms.o := -r -R
>+LDFLAGS_vdso-syms.o := -r --just-symbols
> $(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
> 	$(call if_changed,ld)
>
>-- 
>2.17.1

https://lore.kernel.org/linux-riscv/20200402175354.pzhzhumlqsjk66nu@google.com/

Reviewed-by: Fangrui Song <maskray@google.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200415144217.cxxdfeeepzgikp4n%40google.com.
