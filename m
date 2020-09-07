Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBCGL3L5AKGQEFEOSBGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4321626063F
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 23:26:34 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id e4sf5387950pjd.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 14:26:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599513992; cv=pass;
        d=google.com; s=arc-20160816;
        b=azaK3fMBNfOtgCqNEUbUOBhtoL9DfQKQtrbr1SjqRkd2S7NbzfvKw1BzquCgGWizca
         jfsyiB4V0l83o/mKBWCbtQXP65ZBp9F/kMTWbaBoPRzK9Uthx8blx8IUCtkVyFhVrr9F
         oBlwVuSl5J88sLxLftnPDvpq9AUZtacwqrutIdp3MFEo00iPf7yQ6CCxPBImb4gDm3GI
         bGi8ZzAm10qrSn3wsGzLyF9XrQOkgbk7Ae0QUvQ4wz4NA0VZUP20w/sd9jEVfQidho3Z
         HVudhQi8KFt4qeRlpnscumkXSTZwurQmnTHwX44nOYjpAXrq/9pVhV6WelceJiWnN301
         cslQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=vUGzICHfnxOAubR/+0A7TsLo/dIISSX676Ku6fSHMhU=;
        b=RoG6mvfkregxRv2VeJHYnZG1e+Jz1upua5/MNT7XqNOMKrYHnV3PfqGA3yezVINh2Y
         ybpSWJ65MbLRPmmICXVuprtnUBCIwT8PtW/LP8/JT2n8KYRZfcfhF9CQCF9N49C0zNHa
         4hSV/mQDybCdObLWzKuNAETGHXeFfEF7wLcsLZixYThETVE1Ux+65DAuWZnqTrWVahKC
         ifj7vrWXOEFsJYcSxymkjkgDkxAS3LhWVZo8fRzEdXE5zPrTAhTi4Nt5QLU8tNRM+rtx
         m3ewIyPAEi9zDv6SplyR4Tc8LiyOJUENvJvz4ECHM/2+FhJs0bvuiXDudwZqJJ7P6DOY
         E3rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C0uKcJcx;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vUGzICHfnxOAubR/+0A7TsLo/dIISSX676Ku6fSHMhU=;
        b=P8MVKnBNlT/Fm74S/1fzseBqzjVL0QZWoH/DGhb5WB0l5mxiktQA9d3Tb3FfpZBHDJ
         ZUaP2D5Ih2GRh3dmBsh/4omoFG2GzqmWmTzplT/wtBoxijWclpv68gOOtv8uFHQ+IBJA
         yJPI8v5BeplDT2gbXz16uqTqvOVKeFQETXXUyUbFBptO+mu/yUmCZ2b4yRVM8zP34UMO
         4YQ0Ewb6k8uIq7UBJ5ahfnb1LmlWat4dKHlfhMyXC6JzVvLALO4XgE9Hg8kRLl/OsKGb
         8cFgbnmwjl0sBTwJIeMtqT/pPga1uh7kgEayMIf+fdC/RxKhhLhr8KNYXrL99VmIGtTx
         1wjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vUGzICHfnxOAubR/+0A7TsLo/dIISSX676Ku6fSHMhU=;
        b=IJHmoXO/vzeQlT+F4AsIese4tgGhWFenDql7oCEPoDe7XArAxn7x9bxpmsdWZUYZIV
         3Nv1zJ0YLkTn+iFr2DZEGmyvr8Vh/q5Ynyj1u9PL33FnMBX1A2Dd9mFi+9tP5lOH0s42
         jut+Hyx0fwk0v9M9QghBKA0XGdhaLCX3a3Yj57YovAXi3itF39Tyfe90kkVIkjWXB8MZ
         Q7QLetn8vHU29hvs52WzUVDvV82lpujLgNZMe4EseexkLGFhigPgStxb2aVshdjzq8Ak
         r0UARiYzdkoCdR0sTziIRqvOsSgiegiJmbO0mX0TnchcDzskpMHP2siSrLA7WpSnu+1+
         lSZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VXyvLud72YmQy34ZCO3ZsKho5yRcJGj7vJTsfIab8eNLk80tK
	gdMKaPqeU/+iQ+YZRUB6Ntw=
X-Google-Smtp-Source: ABdhPJzO50EyGFzSe0rhfh/DPXlEhCbPHE6KDV1hAcBtuGKiahzegATu7nMkMmMGxEP2xRyVZbgA3g==
X-Received: by 2002:a17:90b:510:: with SMTP id r16mr1001749pjz.75.1599513992845;
        Mon, 07 Sep 2020 14:26:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:6b4c:: with SMTP id g12ls8335050plt.7.gmail; Mon, 07
 Sep 2020 14:26:32 -0700 (PDT)
X-Received: by 2002:a17:90a:a60e:: with SMTP id c14mr1049623pjq.31.1599513992319;
        Mon, 07 Sep 2020 14:26:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599513992; cv=none;
        d=google.com; s=arc-20160816;
        b=tu7Fh4vj+cw4YQiigYv36OMVaGhy8sFgrLzs6oDvvEJdqe1XMGfXjsXIOJm+O1yWYN
         6x4I8zzwMc0FJZC3LI6WjMKBRJlBY/XHPoZXc71JfvHJfj8f7M+9+qlMS3v5J8FlBGus
         mqxvykgyhUK8J8JRrsD9kdsjLKTl4M5AP69T8LzTTaJKSGAv8/3ac8lwVMds56eEAKbG
         dKzbuCkO9CtNbOgLYlmnma2u0MArSggCpRqAKvTwfgKtx/NvB5QKAPps62jZK0zHN/p1
         DRWCjy60C6f09Wl+91YNd7IBrnf3ur0shGcq9zUCLHcWMjOstbDvgg9KZ7ujPyUU8Og2
         SWvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KiptKZYdVLVO19im8+lCMKIpUT5APbo1h5x6MhPE00M=;
        b=MLJXDVR2tEj2YROc9ljvz4lTP1B3YB6v1siGLF/mb1dKx5R62NeV40hC4ey0D6xoT8
         TZzexpH/4eQydD/u09vUN7/xEg8F+M/cu5Scnr4S+hZpdIdIFFbiE3k2jcsg8bqjtmO4
         31dCUAG2nxCkb9Vd6l97owo25cIrHZ83xEYcw3Wkg42ZT1/yjffaYEdCjKQkj4ZgSof8
         xlepXSnxAs3qzNFmJA0h67RrIgFisWj5D/0AFWtnGcj24EZ5W9HKM1Q09el3IX3h7Is+
         MlZzKsvdpe1BtpV+k53VzLfhtAHzZBs3x0xZTbKcFKSAcPmz3xXSsbWbocW3NZiemQpV
         5Rnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C0uKcJcx;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t6si211644pgk.1.2020.09.07.14.26.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 14:26:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C8A192145D;
	Mon,  7 Sep 2020 21:26:29 +0000 (UTC)
Date: Mon, 7 Sep 2020 22:26:26 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/7] set clang minimum version to 10.0.1
Message-ID: <20200907212626.GC13815@willie-the-truck>
References: <20200902225911.209899-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902225911.209899-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=C0uKcJcx;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Sep 02, 2020 at 03:59:04PM -0700, Nick Desaulniers wrote:
> Adds a compile time #error to compiler-clang.h setting the effective
> minimum supported version to clang 10.0.1. A separate patch has already
> been picked up into the Documentation/ tree also confirming the version.

Modulo my horrible grammar nit on the last patch:

Acked-by: Will Deacon <will@kernel.org>

Thanks!

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907212626.GC13815%40willie-the-truck.
