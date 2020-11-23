Return-Path: <clang-built-linux+bncBDFIHPORYEARBQM2536QKGQEJJ5WRPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BCC2C031C
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 11:21:54 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id o28sf6023306lfi.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 02:21:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606126913; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAKrTKb3Y9EB6ApzM4gpmeuv8L7PnZll+x9CGqcaEnNizUCptniWjnyGM0R/BlTL1w
         Hc508/ypTpcH3E4ObGWsVxA8lf8hdY9Kq9Yg/yYTZfbC/i60+Npk6H3dFWkOzbHO6dof
         bydLKHQ4wcooplsffJnWXbrdtPSWCAFu3Huy6fMxkI7hTsKu4waFEi3jhIK5ZcXaJKAw
         PcM/6kfYzdwSpSDv+i66GfvR5IcbTqnBNe8xUHD4hsO0/jGVlj7UYnu7Uxye84STCezf
         5pJ2D8Ew+1Cf8Esmc4T+IcqkXaFJ7/VIblUPgW0JYL6zc+x0lhkvvdNszJ+c9iWZzIOs
         6mbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FVdhWz8n8H3G8/sFN9EhXUPFA/sSGvw2VlZqG0wpITk=;
        b=PVUhxYzf7KmF7W4YuXu/mLFoqUreoZZe85JTvXn0khf8zM/Eny95oUgUe8z2HO8FZt
         xsVxM30R85thNbIGSBoMZXh6z01fEDQ3SXB/cuKRERJ5FacRhZCA0b8wlch1e54eLP6t
         u6RHD/k/yP+DSgrRhk+ApFv/gxIgXkFCg/oZ0QOA+Z6fJ+UEPE3IZk9MA1nF/Eo8zB3y
         4vC3RROFl+JqZ4FTURwa4duCXZIIKJt4kZbzj6yldgfwWHZC5BzMgMkuPLlpmJQzqvSd
         ZwOatDutuFXZ/IW6jGcjp87+ylc+6sVOd06cQglqSv4nYIjZ0Y6FOOctRfOBUiBtGOF2
         KRWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="TDVt/xqw";
       spf=pass (google.com: domain of dbrazdil@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=dbrazdil@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FVdhWz8n8H3G8/sFN9EhXUPFA/sSGvw2VlZqG0wpITk=;
        b=tRnKQgHJU1SL2x/Zm3YR91kHhwJhu+JrpbEfDJzBCNJqZyIOWXlN0TDFECxieomJue
         pwjF9IbsnXOM4dXzlJMs4Z8td6xFkCvSsw/gM+DtDEUmVky/aUzok8aa7hbbWh9iq5Jg
         PxMtiZQBRjNSEumfnwAG3Gz7gtk7AsfUjqVvqBIxVhXuq+kiIOmufcj47DPh6ePGufZ5
         ZEROoVxfqDL04t5/XJEBitcZ6g6T3RYWJkM3WvshnC5XJerO9G7NOH0leBWw5e4rLUao
         bzMM4hZam1SuKzK9AY2EHG6ZK9/7hf3DeXBUj+ewnwKDokH/kYx+XIeP8Zj0A5hHZ0Zu
         trJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FVdhWz8n8H3G8/sFN9EhXUPFA/sSGvw2VlZqG0wpITk=;
        b=QTemFCAQHGTxWj3hGQH5X075+3sKoIKZ8VK5m3mekYuD5TK3+HGK+7Noy6LlOVeC65
         cm9G/IPgFY85nlN0sENa1Lh9LLrHPYfTd2IUGFUAtRdRswMGUbhNq2pJ5qboqhQpSAQo
         SQAZ+weFR/NN0IOIFQTRwIQaK+zGY8ktXlfvlkOSPn0P7TSvk0ZkVjQXBX8wi7Uq/s+c
         OO6xbgUJHvIdpG+8PpCwQDmH8opq1lz6z/TyeC/eko1JQYZEOcEG+GAVDHhuLiel0M9r
         3HkP2/7AuZLQ/acTjmqsmhrFKFioU9niwry4nMdetRINjU2tfH68hN5aTN/Pt+Do5+Dx
         vAZQ==
X-Gm-Message-State: AOAM530IccnvcwGFnEkawKYzDfCGWUDfbmfSj5DI9d9SSWhQ8r4K3oiT
	RzP/xzF32hmkW3d8v7DVmcA=
X-Google-Smtp-Source: ABdhPJyowGTR2YKR/vRDUbksQB+DbYa+VlBfdh6GY24uKl6fkjJIQWhyXnxzdaT3k6Pwh9eayoYzdg==
X-Received: by 2002:ac2:5b88:: with SMTP id o8mr12809435lfn.265.1606126913544;
        Mon, 23 Nov 2020 02:21:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9b9a:: with SMTP id z26ls2009077lji.7.gmail; Mon, 23 Nov
 2020 02:21:52 -0800 (PST)
X-Received: by 2002:a2e:9a52:: with SMTP id k18mr12175144ljj.34.1606126912619;
        Mon, 23 Nov 2020 02:21:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606126912; cv=none;
        d=google.com; s=arc-20160816;
        b=nD7nvi8iDYQVIyOsVDeVBZquFJBR6mmS4dKXFOWD6lU67l3Ay1Wep5KpHK1M1rqXyX
         PxaLq7gzinOFRE96vhdWGCJcYATMa9cUxUorHWxkRYC73B6IL/NA9q+ARGTiQAwsXWXH
         8ufi5uC6fqcaH/CWLFrEt7fij+Xm4p/VbLANEoMNDosM6z6sveFqMdFP5Hi67JoXUsIK
         Trr3tPkQQrClF79anu9+NLqO4QrJCUny2ruvEkLVTXKslj4RUBv6at3abJB6vedZjLti
         DD2Nrij8zM+7OQlz6Tgvo+jttuoYECPwA9yQfhxCJ43C08+YBfDTXiuycL6BW+1glh+Y
         h1/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KicNkypOIaNLZNofAMT0/dbRVfdiQb0EG7yDuWE5ulA=;
        b=tMLHv0jhmYcLm+4vCNcVfKr4NZwxqtU14yIZEryUEx7wUSMHgiiuUSvkqqHY3YlO4b
         Dc9mp9CKHeFBZ7h2ErAkfxag11sNRBFT40e5+/A3Twv/XZcdMNaP+2SlB1plDkpdu02b
         vHbanWinEh2H1Z3ncbYAOmi1LR75PS0I4WiZu9FTgcBLl2IkzMIJCVdzUVY8im4LECvn
         n045rESA+zpsc2fPjmcSi4XTiMEEWexsf9/R4SqAvAV+a0A1dF98Gv5YS1rckF1axMqc
         47I+wM5B9DbmQvGxGvA0hMbia7woNvYtqBO0J2b1QzmXH1Vqa5416A34SKmu2aJ1ZJNU
         DrHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="TDVt/xqw";
       spf=pass (google.com: domain of dbrazdil@google.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=dbrazdil@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 23si153044lfa.10.2020.11.23.02.21.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 02:21:52 -0800 (PST)
Received-SPF: pass (google.com: domain of dbrazdil@google.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Received: by mail-ej1-x643.google.com with SMTP id o9so22547511ejg.1
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 02:21:52 -0800 (PST)
X-Received: by 2002:a17:906:8058:: with SMTP id x24mr44772875ejw.272.1606126911958;
        Mon, 23 Nov 2020 02:21:51 -0800 (PST)
Received: from google.com ([2a01:4b00:8523:2d03:acac:b2ef:c7d:fd8a])
        by smtp.gmail.com with ESMTPSA id k3sm4725861ejd.36.2020.11.23.02.21.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 02:21:51 -0800 (PST)
Date: Mon, 23 Nov 2020 10:21:49 +0000
From: "'David Brazdil' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 15/17] KVM: arm64: disable LTO for the nVHE directory
Message-ID: <20201123102149.ogl642tw234qod62@google.com>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-16-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201118220731.925424-16-samitolvanen@google.com>
X-Original-Sender: dbrazdil@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="TDVt/xqw";       spf=pass
 (google.com: domain of dbrazdil@google.com designates 2a00:1450:4864:20::643
 as permitted sender) smtp.mailfrom=dbrazdil@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: David Brazdil <dbrazdil@google.com>
Reply-To: David Brazdil <dbrazdil@google.com>
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

Hey Sami,

On Wed, Nov 18, 2020 at 02:07:29PM -0800, Sami Tolvanen wrote:
> We use objcopy to manipulate ELF binaries for the nVHE code,
> which fails with LTO as the compiler produces LLVM bitcode
> instead. Disable LTO for this code to allow objcopy to be used.

We now partially link the nVHE code (generating machine code) before objcopy,
so I think you should be able to drop this patch now. Tried building your
branch without it, ran a couple of unit tests and all seems fine.

David

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201123102149.ogl642tw234qod62%40google.com.
