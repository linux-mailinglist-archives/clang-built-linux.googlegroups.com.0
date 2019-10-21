Return-Path: <clang-built-linux+bncBC2ORX645YPRBD7JXDWQKGQEQKGJ6KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id EA478DF827
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 00:43:28 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id o141sf11956651yba.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 15:43:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571697808; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7olWuhLwKugNMgcVVbtUW0MjKsVTISnEYXXRkMtN4e+PSGhoTTrwwI9OoCb+4bSG9
         Loitbi7ckM2CCGejnX8BzXcBLCRFohRIayolW0pQNePgmF4pTMcKE/4ZdGjXGd2mCiD7
         g1aFOtp5Oo5EQfnrRMDOEEotUo7/IGiXNNmYCiowodjcQheVCHvg+pIQDep0cNtvKE1Y
         yc+a/ApTf60FHHfzdyH324VKzXN7S4lwdHJj129E59Ffg3FwsmproNDsv2WWVc9K6u4s
         leQaGdpJO5bLV2FiHXZYoqfgKBdWCxSziS+s6t+V+nupy2C326+Jt8THpFU0EqzNm/Hr
         EIEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PVVh3FKixaspFAfe87POZZTw+yvQc1y+fbX+P1X/o6k=;
        b=dePr4FHuhV97C79rg3maeaO+MIJlfI6e894f2ILVGlLN2cg5YtGCg1OxRfQyWUVO00
         NhzxS92UdgEJWJb+n2Nz9NUiEmKlpqxxilkHTZLwuFFfIhbr4NkgMnJ7NQCgHLN92Fwv
         m1BOaR6hHvxN8Ol7FGyPdVu13OKsVhuk8LaaN5KmyzfoMqqIlvoMd4ripWEBguisY5pa
         7lnhZZHbrdURzjEFinBur/LtkTFNVCpkRHbOlRLhreyWK1n01fG0Qmoedp0VlNy4+Y1l
         RVRNSkycgLb/wO6y6yJ1yNqEYJH3Lp7c7o79+zkcfGsykyRCnhS7GEFKB071mGsao9+R
         MlxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b7OnnKII;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVVh3FKixaspFAfe87POZZTw+yvQc1y+fbX+P1X/o6k=;
        b=eDR1E4pfs1ubxuK7tcyZ3+fH8Klb6TAs0+R/BiOqszI60IBeRmtPWbTnuG8Dj+/Is6
         vDMXbapSvJUHkQn+r1O50+0UOuiihl1h8eQt8PcMluB1ObkmI/fKq0T+/DszWHwRDUM/
         Gn+A2Enp+BTxWKgcHI1QlVONi7gmHa4KVhHCt0QzBGpZsBuas3KoVQFGeTU/uPXx8gxK
         oYHNyU0URGcC8V8DLP3NdAug/PQiyWF95Etd5ulj4rd45Ke4EWbAinnaqJ6/NC7EFq03
         UHyT87FouOcReuJJUgZ+1gP0T29iNPUaHtURVUmoMzOgkNmi0xkTiuW9+u1U0r5ge0mv
         //zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVVh3FKixaspFAfe87POZZTw+yvQc1y+fbX+P1X/o6k=;
        b=eCRMd3SxxjUs61AUMaSS9A0XL5XydDyRu7aRv2tf0bhD6j9o6kJOWq2bb5JMoKblgi
         DFs1sZelXgw9Vio8/0ccwc5qRIXXx1S7Z1eoeXKf/vP3Ekrj5Nin0aHxHtX3v2jsUEBP
         kKgdLm4ENJbZtBpgwHexGtZKSgXOaDkd8BTovSyTxjYeIP+/lG4jLYBaqSHnVnKteQ16
         6XmkBdjdzWDdpNz3XZfTmDtSKhlLMxMHkOnSrSfyGb2K//Q3VJ6xEypsjL9WgH+oUlto
         nf/qhz+HRPkIezbn1m54OCG3ke0pnKTrLNUhOTqz+SRdvSA+avLkmIRA2MwAnDmsplKs
         XVNw==
X-Gm-Message-State: APjAAAWtD8/Cqh+bFt+1u9gXMDF6319ASdUNMzOO5twg6eDIZuBx8XAb
	hDgoHYY7G6XaKC++ciytAUw=
X-Google-Smtp-Source: APXvYqyBkTe8VN7lY4GCVtDu4VLOT6QI+NlTZ1GpNgUVqpyiHSCq5VGoNYPF4APzCZdKo54VRWs4rQ==
X-Received: by 2002:a25:21c4:: with SMTP id h187mr437359ybh.316.1571697807886;
        Mon, 21 Oct 2019 15:43:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:c442:: with SMTP id s2ls2442939ywj.9.gmail; Mon, 21 Oct
 2019 15:43:27 -0700 (PDT)
X-Received: by 2002:a81:9958:: with SMTP id q85mr187634ywg.433.1571697807256;
        Mon, 21 Oct 2019 15:43:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571697807; cv=none;
        d=google.com; s=arc-20160816;
        b=WYZEc80b+bi6s2RgAXGr4rzwizI7bASu4oYnyRnNpmSRQ5gGp+A2uCQZ0Z4FaX2IVQ
         P38pmqs4Xy0LXMxaNJvu2lnuIfAnsM26ZO5iFp4g9sfKmpvgn9J48PzPVmYKrzISS8tb
         Y59XayYeAiaUqyRd3Y39ktmZjc3DvetlErZdu85BIMYce6EHpQm6u1yGCkeYdzVRCF5N
         8dSAqbW8pmUzPZXdwXCzKWY4XZY1qXa04l8qYdaz36UF/PiU50Nk2mJMnKNCXpCgi8uM
         RP4JAc3rcnz1YSgZBPTeZaEXZeRIxn3R0QlDBMit9utr0RTYf4iud0JSyqspW92kfNmh
         nFWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a8E0A8Vlgzb4xSRYYj/bS6TXPUSZill0B9wa3qYYw0E=;
        b=CP1an/fzWAMO+0s/MHJqTDtYqXP0jZPvzr1l/yFAhmbGVlOrhPsPU0XoAsXkh5DelJ
         OpuxCHLB/gziaPz+CFZcCicwA2dy7BB7jjXOxOawZKS8IFEpM9kcqFLeVqW3+DOY3+w/
         4D/RugYZgYG4Y46qem14qeWIpaFYTuITqH44Mi0HySN3xwLzX/JwzzpWXEq8W4xQ7/E5
         E/bhbDLFska17VUXOYkWtV9XvudsTaW6xVFu1N8LTrQFZUMtxFM1iD1awLhkuRZuCzsZ
         qtNSDm/z6zsD5RQjqVSAq95GuIt+oyQKpetUcj1oU8c4EDQCcK4LYjVHbn9NYUr6TXBZ
         Ti0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b7OnnKII;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id v135si575219ywa.0.2019.10.21.15.43.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 15:43:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id p13so10044148vso.0
        for <clang-built-linux@googlegroups.com>; Mon, 21 Oct 2019 15:43:27 -0700 (PDT)
X-Received: by 2002:a67:fb44:: with SMTP id e4mr113225vsr.112.1571697806489;
 Mon, 21 Oct 2019 15:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-14-samitolvanen@google.com> <20191021165649.GE56589@lakrids.cambridge.arm.com>
In-Reply-To: <20191021165649.GE56589@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Oct 2019 15:43:14 -0700
Message-ID: <CABCJKucm2ETxe2dgJhb4Ruzq72psFMGsx=0D6TVnJ-_DL2FgfA@mail.gmail.com>
Subject: Re: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b7OnnKII;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e43
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Oct 21, 2019 at 9:56 AM Mark Rutland <mark.rutland@arm.com> wrote:
> This should have a corresponding change to cpu_suspend_ctx in
> <asm/suspend.h>. Otherwise we're corrupting a portion of the stack.

Ugh, correct. I'll fix this in the next version. Thanks.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucm2ETxe2dgJhb4Ruzq72psFMGsx%3D0D6TVnJ-_DL2FgfA%40mail.gmail.com.
