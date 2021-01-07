Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZED337QKGQEY2V3EWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC222EE7D8
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 22:49:25 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id h1sf6592994qvr.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 13:49:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610056164; cv=pass;
        d=google.com; s=arc-20160816;
        b=huSZdhc1iXg5IL6Qo892X2v2ugNYA7RucoT6jq9s2RvGOyD9yVQX5iMKgAcgJ/rfF6
         DPtoCr2jo5zYwS4v/P8bNcesOsCs80U+D7aH9nKDGD1zqJfU7Chq0s7iT9ElUUYhUt07
         SXdRUvAwoCrgNNrBneZw/l2iWdneJwnXwNtdnvNzpXe7IIgSBOkTTGetqbZaxSi5oWkt
         Ura3qfiGenj0tPvTumLsF4xlWyo1KcI+6JkM+G+5ISP0AwBzvlHMYJgXsZqPJ8ebLEsn
         4LXShFnmLen5pQTJqwWZDZ6Qo3l2PZFKsnIIGLwPCKKplsOIM/9VB8zkG0M0RE6bDJNs
         a4OA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=P7kvY7rkAFcILKajBcl8qu+weaJZRH4pwVrFqUI3vRs=;
        b=ItVu0ZJERPVWHZsvMo9bGMkkvhve0UtdSpEwx6FWID5l5eYWG771/8cO3rq9iPgRWF
         8A5FkyGuHcOXBVcCza9pbHTX7Xwd6s6kBzUp03QUCYw0tQVMfwdvwb7WRkQVQaL+aEhU
         j/BrODKKUQC71d96EuUuP8NCfqRCKG2QUdjTLSM+0fKoOTtqmRUTcProh1oPkUtotot3
         izXFAJUTITEr8xL6Lrkv2EH78d9Jwk1kxtIecnGUNefatqGnfG9iej387LRFCXvs5t3H
         YN2bdF2OXhR1eJCU+GbdXfsAq/RKf5K5kCXrJUm2exdqjjLaJ+M2qRhvwZ9xYrcFT+sA
         CRkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UgSAXxRc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P7kvY7rkAFcILKajBcl8qu+weaJZRH4pwVrFqUI3vRs=;
        b=DTqNuT2bknruNNI+enrE1RdccuLX4frzKfOC8VP3CqlJ14lCx3JqDPM6Fa2RrrzmA7
         U44A6vbyXdahdFep9msx6iLj2w0LFAzATIPz+SR0bXdaMZiGLKoI7vyVWpchEenvHo+R
         /c/2pwy1ybMoKw6H1A8PBqbztrp3ZtQ/jqG2mix1tC9GdlZdCnh+lKVLxrFpsK2Qtifz
         UMmb/mK74MT+Eoqp5d6NTnIy4u4fQKG851Nm3o8Ed8vO9c2tZ75BBtFCohekluxXJXJG
         4B5RrQGtHn/1yBeXGJknnchbmoUtFtE7W8sDiQxBnfo3fkty0/G938FEKPcZYJ4a0zjN
         kb4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P7kvY7rkAFcILKajBcl8qu+weaJZRH4pwVrFqUI3vRs=;
        b=KN973hJzXxYUn7+hx7tzvn59abYORqhx2xLXZpg1BQfSJoc54HzCCRbmm0u8iDLu4M
         TS3LokBwI423ULE4XcdNZKPIZX61IJMuVES4XIcYnygMpKXzeggTGtZbV4+xSXAZZZvx
         0eM5sHqjwMS+uYudm8nU0C3A/wvjeOdMbw2bpIopDR6aAqp7HsVLYi7cNcfonX3XFeLg
         QS+T0xMHLZFCM0J3PiK9fWB3xe0+rl4f/HXn1rU93yTQF42dloUJxibt3W8nondCBSBU
         rQNaoK0BzSpWv948OSzhmYTcshWRd5IOs76Kq5SoaiMn9kYL+CyHb+m+5KZ4hrqd884D
         nyFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rF2AXvlBSu1u+0M3oUgE0ThIbY2LMAtKnNegwg5pPPTEXa47p
	a43btABm7AcNYJOONvQR9UQ=
X-Google-Smtp-Source: ABdhPJxR+UjWnuVdzyJXh1EZMkuMNy+JGcm+oytlnNdivR1Vr/se/i7sclQxU4qAcBuN5ynqm931qg==
X-Received: by 2002:ac8:5cd0:: with SMTP id s16mr646051qta.309.1610056164235;
        Thu, 07 Jan 2021 13:49:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4787:: with SMTP id z7ls2045956qvy.7.gmail; Thu, 07 Jan
 2021 13:49:23 -0800 (PST)
X-Received: by 2002:ad4:4e8a:: with SMTP id dy10mr3901420qvb.14.1610056163869;
        Thu, 07 Jan 2021 13:49:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610056163; cv=none;
        d=google.com; s=arc-20160816;
        b=cKsDFEVefdEOgM2Iq01wYlTQFLSFr2czLwbQDPV5BhABuhLtJaoCpXohYFU7Sbz9Wk
         TDYNgvhJper3j5cpzg+c+KTx6tBLDWYNOhQxPfd8rj7CLQVHjGRvy9QBRyH9S31ABqD3
         xSHO6InHkI1jJLe5AqB0t0VjTw2fcynWNhcweE7SULl67WJgHHsXnI9OdmZ5b/x/9Iqs
         jx6PIsqKtcNXzCHVQvExzbaO66IJ/kYlAQOxFpN9uRM+g74tVEwbWi9qMKSSwKsrxRVS
         UCa+MrzwUTbrhyzVIv7ywJeA9xLeT3n/nRssXr6FknxYubYeZ4OeCjBAPzrroVjOweVT
         chfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UTTy0WEJkMO0H2XumjV4y9QZB0fFUlY6gs6jKFnkPCs=;
        b=lVQRg1S7DGKvrMHWFEvYJqkPFO+MFDtnG8VNI0RIBu9UAzgnA77tgyAAfQVDvJ1bu8
         4Q+JOJ3QiWgq4u7/oSazmCRTxGJtxGNaU+MCnvO1TOi3GoMeHcZgEtwDCFX7E1sDjTBl
         cVeW7Cv+zH6OQDquRdifHkvBYJByX2c4BM2FHtaHmqA4AI3Ne7/i+ppj8n+X6NQKTUtz
         YvaAv/lXcSS61D8ovhupR9OlXn4y4mtfXZZXbL+4Nq+vkCvBNgyGy0RuVxGj2gPI17Hd
         nsNi0rVpgoT+d3G6mrC/s776hQ9Z1CpErWxv9a/AhxaQfdpqSUifiF35QiypkQbghcRH
         n7ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UgSAXxRc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id j33si468428qtd.5.2021.01.07.13.49.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 13:49:23 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id t6so4512705plq.1
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 13:49:23 -0800 (PST)
X-Received: by 2002:a17:90a:67ce:: with SMTP id g14mr473825pjm.33.1610056163137;
        Thu, 07 Jan 2021 13:49:23 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p187sm6618865pfp.60.2021.01.07.13.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 13:49:22 -0800 (PST)
Date: Thu, 7 Jan 2021 13:49:21 -0800
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
Subject: Re: [PATCH v4 mips-next 5/7] MIPS: vmlinux.lds.S: explicitly declare
 .got table
Message-ID: <202101071349.260EC64@keescook>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107132010.463129-1-alobakin@pm.me>
 <20210107132010.463129-2-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107132010.463129-2-alobakin@pm.me>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UgSAXxRc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c
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

On Thu, Jan 07, 2021 at 01:20:49PM +0000, Alexander Lobakin wrote:
> LLVM stack generates GOT table when building the kernel:
> 
> ld.lld: warning: <internal>:(.got) is being placed in '.got'
> 
> According to the debug assertions, it's not zero-sized and thus
> can't be handled the same way as .rel.dyn (like it's done for x86).
> Use the ARM/ARM64 path here and place it at the end of .text section.
> 
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101071349.260EC64%40keescook.
