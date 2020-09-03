Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDPEYX5AKGQECYHAPIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A01325CDFF
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:45:35 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id o14sf1129504qtq.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:45:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599173134; cv=pass;
        d=google.com; s=arc-20160816;
        b=fKmRpPenGtkFkXRHoDnfk4GX63hYARzTjgQUIWcfG43k33xu0cqEGeqMJIIdkIrCds
         0ksmJIKS2EtdBbgw6k+VPW6wuHocblh/NbQ8wrkC4DmWy9hFFUIaFuMpcbo7DNMPQCrE
         Q31vXi9yV95c/wwLIlZYDls4RK3zhRT5k39sdoxE2OHCZjXW+MA1lSr7IsoCg+CnZvxA
         UBEL2H0A9pro1HDIFr+NiIIBXQL/lhiEXYbSH4rOpVrYEMIydUmuzDMODBht4cGRsTf1
         dlG6OVfsbIDeYvbqQjizMv/pYwOMJNB+P8an5+rC6stYtQ5Lex2qmppFEYN/uwTxNwS1
         9omQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=R/FRhwcZr9WTs+9Z5dFqNsorR5lQLr3mxLLLh6F//fQ=;
        b=kx9Bl5O5LgLnDD270RXU4bgztNf/7KsVITVemUQ11vNmY4idzKrZ5zw1Yxem1uZPlI
         rIRl1KiYZUvcaaZ+AlKZRct6RYQxffYhJGq/iPEKmoPPXUb2Of3uU8mR4tFzj5yYJ7GJ
         WWY1Ch4EM1YJSDHCRbYCaORttKICvN7VrBe6/3kqqqxrLVm9YWDdig2XuXscUkIPwO1r
         GF3IzHH5z6DUxoh9fc3nWxojwP/HacIbg9eVZ1lPXynyQyrDG18UhTnmSd/fLh5oP6Iu
         izSyher+H2mkMRP054GL27LDb0VQ6D5A713MnrrmCLLgI2FNhWQETMBCm0gw6IOhIfjo
         QCAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Zx5KJ4dv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R/FRhwcZr9WTs+9Z5dFqNsorR5lQLr3mxLLLh6F//fQ=;
        b=i1OhPfGv/5+nW1y8X7MaBt2nILVCDJHTQMGd/+jJJdTMumKGUxYQtVbfImD3nU39wh
         C4p1ceZ7JYv1EEJfbO4G4ie4j3jr7YFE38Wx4tTP5msA8vspDOQK/eUjEY0ehGESLfN5
         qBoHVKudeXeuE45T8dmMOHejUStdwGbggRw1siKJgii+Ktul7QlUK951MdhG4fGNstjG
         s7HoUwQ2OtmFVgaR2HX+azeWlBfKRFv7nVZnPUnNd7tmzUIVMjpQZaziYaY7YXm2DcPv
         P4M7nyayoZ2u1+L76UwQiv6uXFyuIohjY6Lyp4QYNRG20c9WPu5NT4VYWoFH20YVV368
         hsDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R/FRhwcZr9WTs+9Z5dFqNsorR5lQLr3mxLLLh6F//fQ=;
        b=TSA2CAmEhangO9FwK7m8FwkGTaw/DEpDggRKc73gXFDgapAdqw6qtIhdCIzUQ4xNkC
         8Z0NJ+r0VW2EGgUOB9GQ9Vi3sTe96e7rvu8uX/qFoVAYEYWyUcZzaSmIIuo0sdWWgpi+
         QsjVr0YipR4ahdwppvUzISdkTa+0yggT5qgB3+ofeF/QyYaWegJtGVUC2h8/kuhq82C7
         k0uYB+q2kI+LDmFM9t8Q6gS+MgCc+E+dQBCJ/yhmIMhT+G/KWIo+6qRRNXF2hhb2VqTN
         mg1Z7Mo1B+AX78ebepm1NzAmCQsaM/1eWSIkt1dKf0Z7CRXyZz/RYzIwWxhPV2gzgYQi
         xPng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YoEHzCSFSBmBgpr4Cmjwl8WGGPb0l/op86uvxdh5KQ15BpRya
	3ad9ecmKG/L+AwrEI3td/Ks=
X-Google-Smtp-Source: ABdhPJz2LAuZet8q/xgZSi/byszspJMszLmBXOX2J1Dfq76+W0kD5B/VftRn9r19bnjKGemsOcgvPw==
X-Received: by 2002:a37:8ec1:: with SMTP id q184mr5390178qkd.494.1599173134007;
        Thu, 03 Sep 2020 15:45:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls3680224qkf.11.gmail; Thu, 03 Sep
 2020 15:45:33 -0700 (PDT)
X-Received: by 2002:a37:b942:: with SMTP id j63mr5511461qkf.138.1599173133657;
        Thu, 03 Sep 2020 15:45:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599173133; cv=none;
        d=google.com; s=arc-20160816;
        b=nNdCny33oqHvT/026fjGNYi3JfmhFdMyLSq4maIkxGsluQDOyxFYGZmHBgHMGc5pLe
         RNANQE4ixYVvhmPV5isC9gMyOKk1R9hWabenAx44XL4lOsmZj3rfPG/puECVWi0eENkg
         /o3pRoRJvtV8Owl3sAjWXWYTxvNQu3smKfL4v4nJhKAPk9Mc+MgiLuPU9yaiyVrUDi56
         Tw0tgeFlj0IU71sTwU2LxhRDimIgTpqHfb33UKiZuJ+QtcS/AzsyPE6WOzy/UpYfzBWM
         1rz4bkH4zEmx3GCfEDTkQVSo8pq27e0BwXW5Wd4Zsb4kJ+lNKd6I66h5+6H4osUisMUT
         YfSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LpH2+c3Q5/rnXgDQMsrsJ9HiSsfoyzj1qvyyccEruIs=;
        b=gxgn29ut03aRgmadVFATIUQc5hOJo341D69mN7W2/FbSJfrF/whMMmG1e+yP/CcLqw
         IrehsGVaYq0MwUPOEriia9ijJYw5mnpuOW1xmRWwdF9JRv+eA/BkqYAnN7ctAKLXzVzM
         U6kx5HdFACzVpUVkuIttYD0i9GsqfE4GHZ08xdcSIUGQBJKuDWPES2QRXRVJsoz+WWQo
         eLBau46tXEcqyunvtCjqzhrJ2XUZDF1NmlVLpMwDzYyycxGqBslIoLfsQegqOw95LFCi
         RNLBFBsu8TUx3YBF3+BhKNeV5r1RcP+kdht7qt4MdpD+UKEJ1moiYYiO1ESZtr1H+wAE
         g/Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Zx5KJ4dv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a2si264384qkl.4.2020.09.03.15.45.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:45:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 67so3252484pgd.12
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:45:33 -0700 (PDT)
X-Received: by 2002:a17:902:82c7:: with SMTP id u7mr1398150plz.240.1599173133340;
        Thu, 03 Sep 2020 15:45:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r123sm4320262pfc.187.2020.09.03.15.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:45:32 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:45:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 24/28] KVM: arm64: disable LTO for the nVHE directory
Message-ID: <202009031545.42ECDC8F7F@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-25-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-25-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Zx5KJ4dv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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

On Thu, Sep 03, 2020 at 01:30:49PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> We use objcopy to manipulate ELF binaries for the nvhe code,
> which fails with LTO as the compiler produces LLVM bitcode
> instead. Disable LTO for this code to allow objcopy to be used.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031545.42ECDC8F7F%40keescook.
