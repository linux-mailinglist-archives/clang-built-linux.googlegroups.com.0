Return-Path: <clang-built-linux+bncBAABBUGPUT7AKGQE3PBM2JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2D62CDCE9
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 19:00:50 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id a29sf1389087ook.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 10:00:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607018449; cv=pass;
        d=google.com; s=arc-20160816;
        b=VfQr2gpj8Ew2ngn9qK/+rlWQiifGrCMdzAJv04KiKgSsYjQZlK9Y/8rJ6SkhSRMX1N
         oLsXe339kQs0YF9xDburVPS1eMHdFGqVmfYs6J0O8UN2kgZNSGMGmzOrl1ee8gUsVocr
         QXKbL9xkAClOjec9G+0aUz4eORs/eNTD5fTkpitng3AL/QazFYPx873K34bpHzcJgbbT
         5IlMaFD9M2L28P6yF9N2ICMKeF2M31yutm4XZJAIQ1X7HzU3a1Tmj+K99e9hcqH2oAsl
         z5+sJUC2pHCSvmdHR4kr0mPWNTbTIsdiTibjYnd7FgWUh6KDGJoLbJh8x0AUf/ZYA6no
         Sfvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=pTO9kTmx1+tv4TFIs/yVEFom34wYcEpNBwseBHFEzO0=;
        b=zAumImW9jxN1j1wucwBDLHk2u2LWjRmzV8+Who2D9yfW6kDO7fcxbd+PGBp6/A2pLk
         zS+n8eDswl6XHZdvP2m0emozkl/Eh7CDOLtz4bXGbVbVTw2aTiqlpNaJyalO/G2NOfUO
         chUO0zmQv0w9mej2cyORuKlzrNWodlArDu7wGGnf0ZcAZdHUJKK9Xbosq04n2Fggjo5Z
         KjgWAPIhYaJWYHZvfcD8+eSMkPNAOKQtY1IYrVNZc814sZ+v67q1Jl6g/QkkwEZ7E8bw
         knFrXiukM7nsEHGUE+6EWB+KtElQqZpMLPPrcn/uGnbeug83+jH1nmuR9k994szeloR1
         /Q8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bt+9JRnh;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pTO9kTmx1+tv4TFIs/yVEFom34wYcEpNBwseBHFEzO0=;
        b=oXhI90Fz7rpB2GvqEOQu8dEupIT4mAX46C73Co9c0HpcC5jf2JbGDj2568mcVx/9v0
         O3nZ95TXOBhBn3ccG0VIxkrzP5esmaPphjFDCsKcequwAUNVaCw/NQRrf08+mOVWX+Np
         XmEVsnPkx9FfFf+j4yn6OwOG/bEQR/szz4lhkGm87QMr6Ry2+xNHNTcPgo9/Dwy/yUvr
         u9Vr3IVprgTiP862j5uvNNIe0JeIpiqYGY6/0IeTgfv/X/ySd9lYgHyWWiF+ciFSqw03
         LCcRcPC5lw3GaLJo8TM4rh+D6XNHLFKZxULKF4npWau0kdD7haOC3ryFKK/86EIAEfH2
         9VIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pTO9kTmx1+tv4TFIs/yVEFom34wYcEpNBwseBHFEzO0=;
        b=kOAhGEYmhNckq1JX1ir9Q3nG08Iba12VXNQue2DTGpyVas9blv+KyemVafiOvSNsz+
         M8oov3nzpGz55/gYSRuB0FZmzvQ4k1FytD3bRKwGO108LIw6zfx1bfEzRnYVh0iHIg2x
         L5vTm1n1nbd0j+xDXSFimgXYam+ZCGRmiy8okUwUcxNzv4cNqmk/OeDBInP1C40QJT38
         D6ZrMNAVOvnZiLuIDr+/pBZUKrl20Sk+Djw+jBxhbX+ZfUbtbmFxq2aH7Kc08yYKFqDp
         LFXTlmzQPcrgRWHBmSwcEYP7PX2U7lPnYiTWs2pX9jAqA5wRELx40/FwNzGLGMYmeIX1
         MdcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kJ2FqjldfFsWxV6BR0iTDTNoabDP0S9hK1YFQuErtBd0v6who
	f4JJcbVGgib51lFNvIo3FYU=
X-Google-Smtp-Source: ABdhPJzQVlrV+LPqSHAQ8z0YXAgeqBP64YN6Y/yqZxYuPYC1Gtnu2UvTncvYVXHnBEHTmNtRav2nhw==
X-Received: by 2002:a05:6830:22cb:: with SMTP id q11mr291450otc.163.1607018448961;
        Thu, 03 Dec 2020 10:00:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ac3:: with SMTP id m3ls1615805otn.2.gmail; Thu, 03 Dec
 2020 10:00:48 -0800 (PST)
X-Received: by 2002:a9d:5613:: with SMTP id e19mr287891oti.153.1607018448583;
        Thu, 03 Dec 2020 10:00:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607018448; cv=none;
        d=google.com; s=arc-20160816;
        b=fxRKHZykCN+cndxwrnE0P7vRJe4Avkk0T3K8I62tGq4bN9RhU1wjWIWVqmD96VLJTy
         eBzNYqf4/6m4HkaRDIOFhT+7q6P/h4QAjqfj0D4NGTxOfBVZUJbqkWjUCDgQzsnd7Spv
         ER2dhQmeMG85v+TvS/Y3+oMslqzT6LFtieuvk7ZvfNBV8brsAwEVxVtZSohrZQgqXzHy
         RBGUWb7sQCWKPcrtNZIppkcV9fs3oPFcAf+Dro62oXJxhtqkp/DCTrd8t3m3AfjdoOKO
         bMs1Q+pSgxtc58lu//t7cA26arlICDmkutNFc1gfytkH0vQ4ZGzAUaQcd5Qc+EURjb+P
         kzdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FABGuImVXsV+nr09JVj+zQ9EBUfuYv8QZ4jBa/qWBac=;
        b=bIbYOq47TxFwEXdj+IxzLdldo0H1KIBXuBEFPBevWJ4VIGdeM5nskhdWEDYmy9tETz
         0+kleByzMyBpKC8dDeP5GN5+VSBUKGZeWjWSHVdYBBP9PiBbvjIowlBNOz3g936wIbwf
         XLlzcppgx844UDIsl/pxLG9qoG6JAuyd8dMKhgmNVwfVpOTOLnunGEJyR9GJUf7brH/4
         Kd22SCK1T8jKKKE936f10gNBryA8xl2rGBOEmDd+BPCvn0gr1rRU/UTF6EV2+x2mR47Q
         0VCpw9nDRi+2txGrGXCJFrHF2mpVvaYObLqUu1Qu1+Or703XtujW3aoOGqUlEjUVXhd7
         hEJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bt+9JRnh;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m13si23153otn.1.2020.12.03.10.00.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:00:48 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a05:6830:22d2:: with SMTP id q18mr276973otc.305.1607018446511;
 Thu, 03 Dec 2020 10:00:46 -0800 (PST)
MIME-Version: 1.0
References: <20201203170529.1029105-1-maskray@google.com>
In-Reply-To: <20201203170529.1029105-1-maskray@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 3 Dec 2020 19:00:30 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3XiScgpL2cGy_e8-zK0U48Z0VMLJWDYKRM+BRUFC0TSg@mail.gmail.com>
Message-ID: <CAK8P3a3XiScgpL2cGy_e8-zK0U48Z0VMLJWDYKRM+BRUFC0TSg@mail.gmail.com>
Subject: Re: [PATCH] firmware_loader: Align .builtin_fw to 8
To: Fangrui Song <maskray@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arch <linux-arch@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bt+9JRnh;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Dec 3, 2020 at 6:05 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> arm64 references the start address of .builtin_fw (__start_builtin_fw)
> with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
> relocations. The compiler is allowed to emit the
> R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
> include/linux/firmware.h is 8-byte aligned.
>
> The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
> multiple of 8, which may not be the case if .builtin_fw is empty.
> Unconditionally align .builtin_fw to fix the linker error.
>
> Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1204
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Fangrui Song <maskray@google.com>

Acked-by: Arnd Bergmann <arnd@arndb.de>

I found the same thing in randconfig testing, but you beat me to
sending the fix.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3XiScgpL2cGy_e8-zK0U48Z0VMLJWDYKRM%2BBRUFC0TSg%40mail.gmail.com.
