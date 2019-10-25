Return-Path: <clang-built-linux+bncBC2ORX645YPRB7UXZXWQKGQESFRV5PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCC0E544D
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 21:24:48 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 196sf2486962pge.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 12:24:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572031487; cv=pass;
        d=google.com; s=arc-20160816;
        b=EftZgi6YGESqIOQnLU/uqVPTqRuqK/UgTUzjDlwkx4FDDQx9GxTfsTwJWucO0n/BbX
         bGhMWTdGPa45EAJ0lFAd+pTLJ/n8nlMTMEgPL+114mSdxbiIOcsYGyp+9p4OnGFkUSly
         HwMGzUAmxTOz4eheSfYBpSnPBXh9hR0+F7ci2bWUEWYQBY5Tya0AGbwrRDqEuUSV8eqW
         KrKvKriQkYSB+TdkHoV/AQmR9sjJ20myVJQ1rh9dtccFF7EJCiBdWZ7hYFzfMeCh7g0w
         nmOX7hBq55FptlnWz0VmyLrS1hdTURpa9M4gxRGpFk7ZyM7eesCfxUYVDRZzhJY05ccB
         TE+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VkYKNXnngcXneB7zhn+2WrImat+DniwM+mFwYLXW5RE=;
        b=O8+/FRXtERWZ9pjx4SXKwu3hzV7DRFhAUgjWPIPFgW8htQTgBH1Vx+TTkR8BNIvdG7
         uxlKps4d1avH6Mj+xJ8e7dpdfwg47dM3sGoxzbqDzS8TnkMTnAZ9/7Kcg7daw1SFc6Nq
         EY9F69VOqqypUNklMkJMGD4YOlVvpzY/9gx9/k9xgzvUnY0dZP8zcINkLmJc2YvavXSG
         BzINRSmVu9lyYSP5dqiVU6DkAbO6pMQieHQzfvQg2CJEQuUTNWBTD7EjAPA27QRwbXKl
         I7NvFkeSZEYzk5+QRJZ8u/Eb8DCKM/dhSlU2EPZymIJpgO8jF9gzcGw02ZNybG99O3GQ
         MLeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B4GQskO1;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VkYKNXnngcXneB7zhn+2WrImat+DniwM+mFwYLXW5RE=;
        b=oMIRRYrjLxc0+vteveb1gWMoDD2XGzZQClFWeCF/MMFWZjDxM3+VS6qUQ5YWPBPOYv
         XQCIlRGRp0noFVF3HBkXWKhYjECs2K+nWhV3GLMdNZVEwNF4N4rJtbBPlIvHJGksoKHt
         lPj8ZXpmPyILcvyYPfRaSwLVT9Hqrj+cOPIftt7kTDlYMW4yP577BUuno8RIHD+F9RUx
         +XeWNKvAu1vXRNTkbl8uT/rFwhxNTPYbzq+iJo//tXUJ5ukbFzan/FDJG+c/nmiBVgbl
         AcZDSPz8TuHhVIS8YiIaKknagPyjoUjHrGZKaAcdI5euyb/O+tD4mFzOzQKWDTli9DrI
         r+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VkYKNXnngcXneB7zhn+2WrImat+DniwM+mFwYLXW5RE=;
        b=RL9O2LpstOwY3QBJwPjMm1lXPRFCge2+ng+DNQljQlRrPYeYNN4hRkMy+9fXSCtGV0
         KtaDIi1zdfYgdxn/rGV9gh9efsjL4hx+z+Oqr14LXbQ2pLv/dcNI0xi4bOKfrXVNWA+G
         HClZjpcOBgtJJTtySVynKPVeJGKo7iTBU+uIvOp8/jiXUj7Kqk8dOqStgt+3ZxQehtEB
         XI0zWfJELzAFNRAezTO9sgMUmO9BtP6mIArCh9NAYVWNlWLublrrGzHhvAAb7wUBufKI
         pYnzES6bJtHkDqNHhaQbXY44DEYvY972kfH5X3Z3OjSEp0L7hLBeqdmRCKRqE/+Rq/yW
         57Xg==
X-Gm-Message-State: APjAAAXtKB8kjUe0yfnwCk7YivqXTqu5tGhe0qEKRDr2aVjIPXUGN1iQ
	Ik6AiQURkdQGQQobyZvMjjE=
X-Google-Smtp-Source: APXvYqyrEuabH7ZCpr99HSX5xMNefSProa7HuyzqAe2hkb52yIPDtaWTTAQwlq96c9XbdDWDd5iHRg==
X-Received: by 2002:a63:305:: with SMTP id 5mr6284649pgd.175.1572031486979;
        Fri, 25 Oct 2019 12:24:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:bd03:: with SMTP id a3ls3103880pff.10.gmail; Fri, 25 Oct
 2019 12:24:46 -0700 (PDT)
X-Received: by 2002:a63:f923:: with SMTP id h35mr6473552pgi.323.1572031486318;
        Fri, 25 Oct 2019 12:24:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572031486; cv=none;
        d=google.com; s=arc-20160816;
        b=WD7STyflRpHTIBYo/0DDckqzJgia4WDFcssPOIgalMBHSOrri1/0EfByvNaT8RPg2P
         dlqhNPe38yVNWGUMHG8FYd+5pUNwMg7pC534TrMli20wgMHqFxpj0/Mq8M56KZFQI0QC
         sNHaVqhALE/oUD8/4Z+hdyK+c5CiZsk1kLozcKQvYlAIVSm4ugzqbaYybH2aWAi6CxW3
         kmvtRbPLFOzXGmxSr29USzftXADDLJwTi5nxQt87EcIbcWJiDv1TiGzJkOWF4Tc7Fkt0
         sDNapuuL+lltO6aeDA3BTKEtIMGhTpC5vNV6l1obGaX0mEyF+Yerc+fF/yAdIa2+4XBh
         rhSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o1KNKNAvei7RdsNFTjOCPFJdbKge4JWaaDzIh5QD5WU=;
        b=QHCbWvEMCg6CohxWvwA1ApV+QA8R/KvaMZLfPHC+Gz+3aqWxIUIszMIkR6KcOCL4IR
         mUSfqsgJRoz64OdCDk5c8IaOqC4cXaBtV6qWP0Czhqci8RVoCnrc/jZsLk7xPtyEbKvf
         wTvVUBoUSvTroXfy7g83vbYIFnzn2+m8zQI/hZuygKEHtMs8tqujbKgw2MiGEvfjMr52
         UIeR4CftKMrx1jIoG0nSz/8+n/2+jOKmZYmqScqSops8h+L93VHoMWYoYvz/LsvcO+uz
         7FQfSuGtsM1/nRd9oMcbBu++jTOfnLogWJbMOdrJK+dOGFfJEyYAh1nS1n7M2BT/KzJC
         hBZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=B4GQskO1;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id 83si76633pfx.4.2019.10.25.12.24.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 12:24:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Received: by mail-vk1-xa42.google.com with SMTP id o2so724718vkc.13
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 12:24:46 -0700 (PDT)
X-Received: by 2002:a1f:7d88:: with SMTP id y130mr2977044vkc.71.1572031484800;
 Fri, 25 Oct 2019 12:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-17-samitolvanen@google.com>
 <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
In-Reply-To: <CAK7LNATPpL-B0APPXFcWPCR6ZTSrXv-v_ZkdFqjKJ4pwUpcWug@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 12:24:33 -0700
Message-ID: <CABCJKuegPN+=rHp4E+QMtfAB0w=MikZVG7vxoTBpLkE56UR4HA@mail.gmail.com>
Subject: Re: [PATCH v2 16/17] arm64: disable SCS for hypervisor code
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=B4GQskO1;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a42
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

On Thu, Oct 24, 2019 at 6:31 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
> $(subst ... ) is not the correct use here.
>
> It works like sed,   s/$(CC_CFLAGS_SCS)//
> instead of matching by word.
>
>
>
>
> KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
>
> is more correct, and simpler.

Thanks, I will change this in v3.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuegPN%2B%3DrHp4E%2BQMtfAB0w%3DMikZVG7vxoTBpLkE56UR4HA%40mail.gmail.com.
