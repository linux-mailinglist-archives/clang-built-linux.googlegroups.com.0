Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMGX5GCQMGQE5VL4KHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6782039BF4F
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 20:06:41 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id s18-20020a05610201d2b029023869267cc8sf3254463vsq.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 11:06:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622830000; cv=pass;
        d=google.com; s=arc-20160816;
        b=eg6jO6lZPfiFKFKGAdDvTsMZHDQTv7Y5kNWfofO8xdzpDXMGzFt2Ke9Pxhy2Doo//C
         tlfIeq004wSjRaL3Ux7ufk2VV0mRC82BJMktAgOx22NAgUqzHJUNaLelKFzIofc6WD16
         Hfwu1UzKVL3YZvhWUPzexaKt9f7xVntdvFaVRj2+tMI6rWUzTCzUPKtYQrcO3Iy/Tnqq
         gU3S3ed59vRLNYsMHQkGOO8+mcMU622jFE+gK4Z+HaN/GvXtuT/AqFdxApZhvqasyY5B
         yusiYJVv6Lkz51OarPbG+I4mx3GRuElERqKQn9EHzTeJN4ruIkrpS0SO6QQbzmjT8qzU
         K7+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XTrkRwc8XVbKNkj+XMpdB2YpNneO2m5+/Hyik2WnoJA=;
        b=tuI+4yDrSwBSIY4evwe1rCf8dJQ6ivsuRVXtgpZKBjjz9y9bNwypZpttngcL+bQzu5
         fM3BE4uXuiUjoL2QrmOEmnDh+TxYxiw07J6eMuzUmFjCKvd3BoW14EKU7svtyg50aN2I
         4WOf5Z+AwZQ79lt5VyfmMn7FWIiw8E08TROPnQGaeN+BZa9cwPtcXt/JHyTCX7uZ11+V
         c0bjqMTb+k14jTDCCQOn3/Ls3dpV1h2QysuttdscDWs/h4ZJbE42idFi4ACbn4DHvf3W
         T54bDZmGwFcVWx3vhjbWzhCg457A9UviQcLSdYz1zeQN2++znUToRBg5LWMRAiklqRVU
         cZTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=INCtCIhY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XTrkRwc8XVbKNkj+XMpdB2YpNneO2m5+/Hyik2WnoJA=;
        b=H5H7pjI+F9Ac+zlvkaS1Y9D1RYSkqhK5bqS1Y4mEygpFbH/tFkHAwn+nClUpD8glyf
         fY6unJUL61Low51ANp5RHUej4BIV0C/YZdXDTESseRJUkVaaSKl46+gIIJ+mE82apwFk
         lyGYpXOPTFP/0qrWQ9Ffd2V0HZb72ckEC6aPZWtRhD/Fzkg+Dh3JHyMIo4PW0zFwQ2dh
         uQCVtTPQNwapfCKY03Nt+XYOnEKqceiXS0kKFU5thB7ME2/HPIWlt7GAgpS/X2HYPqo5
         EJNzfVP0q78+IidYKDCgxEW5mhBjwnY4jiBhwjb1G2MKIn09kpItKJrxrJ7FYg1RYPCP
         GpkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XTrkRwc8XVbKNkj+XMpdB2YpNneO2m5+/Hyik2WnoJA=;
        b=DEB7OwqHriAl3/+WM+LcbvC20qqK47v5XG98cod6p3heYssMyKfRqFOEXekvQpijhD
         i8Jl8L0h7pWchGwP8WEWQXNBIwx1xXmPdvQGdZGH34jfnvEKE23JXEBd9DQsMHc0O4Te
         +Hv/NyJdUUTPMIr3Rf9EC6hzulnOGNdXWgmONcXqyEvowjNv0BIR7crXUFNKiweKzqQA
         O+LEruW4B/MkvxxBzWU1ge8rMFz9xuxw7osrcdUZhDg7eFthotzzRKFkM0lMEQnVYd1Y
         qsxYNCNJ36y7+Jcg1FBTZ4cw6YmfvRWjvuYAAhEcgwFKTtDCy1Y9AkwWl5iMZhGFDrAZ
         Z9dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313lQnwcPyZv1nT8B9hwYL7xIn9bLjrURiAmodlm9IxK+/ykl0x
	aJEaDUNw2ovUFbfzQ3lCLCI=
X-Google-Smtp-Source: ABdhPJzhpcae6xFzB+31YAv8meYdAoRIf3S21nOP6aJ9WIeHUAegSlAtHjqaSeMCAee+fCysAVu0FA==
X-Received: by 2002:a1f:5f85:: with SMTP id t127mr3509890vkb.17.1622830000317;
        Fri, 04 Jun 2021 11:06:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:c704:: with SMTP id x4ls721394vkf.4.gmail; Fri, 04 Jun
 2021 11:06:39 -0700 (PDT)
X-Received: by 2002:a1f:9907:: with SMTP id b7mr3611943vke.24.1622829999769;
        Fri, 04 Jun 2021 11:06:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622829999; cv=none;
        d=google.com; s=arc-20160816;
        b=TFeHw2YiSqzuMeZYy389HLNjbUBtMSUU5FFVGzxr3Cc0Elnam51jrRKN1gJTwwCe+F
         dlXAnU31+NPJMvf3CvK38MVms4KKalXzCiH7sanHX4Eo0jDe31gmQdKZY6140keGuRYm
         KBKsOT2TG+uV9kmOD5Hm9rP5Fwcbf39WyUPyWUz1VfZfdpc8SWcCwuLDX13XS69UDj4e
         4fgz2rzW96z+plVy8ttCFe7kyBU/EhPk+8vO/DMn7hlW248gor4xt9RB2D8vhtWevSHu
         0rAZAtVbOPvm4Ih5bk6zzsmk7XbtVX4EQSvJiGqtfu1JPXMAQlopwSfCYMstLqa/DA1C
         7lGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HDFTGAj6Z0eA9X6bD/2la5+ICNWOiTOk2dOvd/PVU+M=;
        b=eqfEaxWdxqfw+H36BNVmxV04TShhmCSl2fibtp7m9dRyduTLWtTUGIz5GmjxK73nbO
         0AIqNfo+LbJaxdRsAfxOEnJTLSikDTC+PaN5beoyZkb0NSRru1zYk45MHCQ1jYSJ+vhF
         bPRqVE2cUrrFMYSo1tKWVBcDjFqfRrgNXVjBnnJk4KS24pJz17AWzAblAw4Nn/kzxg/Q
         m8sqS3eGiJp8AJLQfhI3XRm6JbiCSB/5hS/ivN0oXbHF/Pf9W1jJ2A836ziPF1HVqYbK
         UweLj7DFgkjXMgeZc9Xbwbn3aP3BeViU1Mt0s9SEioofCc/pYy/1GIVxJ+Hy2Ze/tACa
         Nvhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=INCtCIhY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id q7si163553vsk.0.2021.06.04.11.06.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 11:06:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id 27so8510919pgy.3
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 11:06:39 -0700 (PDT)
X-Received: by 2002:a62:6107:0:b029:2ea:3f3:a52a with SMTP id v7-20020a6261070000b02902ea03f3a52amr5728229pfb.37.1622829999408;
        Fri, 04 Jun 2021 11:06:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id gq5sm5249999pjb.17.2021.06.04.11.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 11:06:38 -0700 (PDT)
Date: Fri, 4 Jun 2021 11:06:37 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [PATCH v3 1/1] pgo: Fix allocate_node() v2
Message-ID: <202106041104.929FFB3@keescook>
References: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210604165819.7947-1-jarmo.tiitto@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=INCtCIhY;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535
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

On Fri, Jun 04, 2021 at 07:58:20PM +0300, Jarmo Tiitto wrote:
> When clang instrumentation eventually calls allocate_node()
> the struct llvm_prf_data *p argument tells us from what section
> we should reserve the vnode: It either points into vmlinux's
> core __llvm_prf_data section or some loaded module's
> __llvm_prf_data section.
> 
> But since we don't have access to corresponding
> __llvm_prf_vnds section(s) for any module, the function
> should return just NULL and ignore any profiling attempts
> from modules for now.
> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
> Based on Kees and others feedback here is v3 patch
> that clarifies why the current checks in allocate_node()
> are flawed. I did fair amount of KGDB time on it.
> 
> The commit is based on kees/for-next/clang/features tree,
> hopefully this is ok. Should I have based it on linux-next
> instead?
> 
> I grep -R'd where the memory_contains() can be found and it is only
> found in #include <asm-generic/sections.h>

That's true, but the way to use "asm-generic" is to include the
top-level "asm" file, so that architectures can override things as
needed.

> I cross my fingers and await if this is my first accepted patch. :-)

I tweaked it a bit and applied it (see the separate email).

Thank you!

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106041104.929FFB3%40keescook.
