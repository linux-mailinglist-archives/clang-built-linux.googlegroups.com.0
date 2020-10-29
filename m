Return-Path: <clang-built-linux+bncBC2ORX645YPRBF475T6AKGQEZAM4EBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 3830D29F44A
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 19:53:12 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id r19sf1635442ljj.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 11:53:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603997591; cv=pass;
        d=google.com; s=arc-20160816;
        b=wH/RUPXGrfg23kMwEAZSIe7gcmCy1KIKgG7CHMS/gWbNcePjM0f9GD11Vsww/NIrqy
         a+fkZOzZBobglCPXYpreANReGpNUgfL/Y5AxbsumYcTTC/PYchzzjfmtOkVmRpcMG5SY
         pgZQtqnq+L8Mz8YcTGIcMkbTv82+m1vZVHBHwpeehsbc2SdrMgx0bkgLlxEc1HufoGhQ
         nxNhDXeTDN11W6tYnGLKk3ZFd+ftXFbG8tRsoCul6ESrsi9weW/jx5CZRiNRICBaC888
         Q5XFMEJAtlyDfQfl23fUZKhVNUcxkr40/gHOozlX67dOe12V0As5BsxJjNriD0XOJaIX
         QQzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nUJ9zTKFlNqhGVFhRekahK7kaEVTet6cdV/+SePbG6E=;
        b=z5T6VVKzYpVynuyA1/0Li7YsoxDYZdv+3bDHaTHpnYW7OVryEv5++kfjCxh1tR61QP
         LTYtezhRazZf2gNT5JfLgMr6z9reex1TQDx9G2CPkXBAkGayURgB9jI3v6dMemJBNdRI
         83McF+FN91ofHPbVt5aHReY2d0b6CUrl5KwrjQY/wRFwJ9TZhzP+YjYDSusH8uqS6qcN
         rlq1GH4KtzlRnx2wjvpDLJ1Rc7xILcHiw+1rTrkFiHI0ehiFreJlmQWRc/IzlEC5Mu8T
         0ub0zqTxQC10/27xDqHUuZumoFy6/5GCaT07ID7Bla1L00oFbs4+C9KvlWIU9+YUTdDC
         10eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l7Fn4Mpm;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nUJ9zTKFlNqhGVFhRekahK7kaEVTet6cdV/+SePbG6E=;
        b=rcq5wLfjJO0UyAqYJmCbRDxBI5Z1dSkh0ScKIVVGNLcsLlYuArCD9EC1PpblW7J2nr
         C6esWd/vvZcsMWND84HXS4ESFLA0VqTNepiVCUJikmimpKkm3POSN7IC5HTmSIc0K9p7
         vnb3oI0SoVQWQAP6vnq2+WtOhMVLJZaykt+3jWDUhZkFCOQxq/KjoRYuCHj9mq0/lMzu
         qKjyoE0b0hg7VRhIFOvIsQ0jjgqTH0qklPfUDGnGTeSt8/AkD+3P/syH58znZ6c9REF1
         dHJOx3SynFCnC3q9cvu2OFNNfqoCgx7p+VmC/h1bUvFsLXUG+M0Vnh7Ulo+VNKwt/f++
         vxKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nUJ9zTKFlNqhGVFhRekahK7kaEVTet6cdV/+SePbG6E=;
        b=FPo9naagdLzW8IYkElJ81aHOApRBQ4BhF33LMTB18QiER1VpfRNh8niixRZzC5sdzE
         8xoiVqNg7JVjjXpysqhrD4X8i8p1QRPZBp37cTtPwYeqRlZrglUrHFIuFhdL8pH1iG72
         oEtQYVXgrBhESqFj1Zktz738WGj7AXOHQwkS7BVGAKX9AMmuJ60IQfupA2NtFBQcNgvu
         vfJEfBEWDj7V+hq5KzK9UtMAL6+mzI7yUWc74Sogvx+2/p5nR2EU7AMSUCqZ2ll3OGy5
         Dix4uerRqlNRw6HFFTeyv6b09Oi9yXLcAglhOxilOnMqrbz6cvSZlb7flC6WI3LKzKfI
         1Qlg==
X-Gm-Message-State: AOAM532ExcRh132UCVzyyJRW++mGesJH+qA+Ks4PxPXDjgcnrsBKDUDe
	E5PYa7Kmtnwj6EVXqj1mGPY=
X-Google-Smtp-Source: ABdhPJx8ANuI4uATkwNX8Sl53u7MpUuPJoG+PB139R4uGmi+uF+60ir7NHwQ+ZmmKIe4mgIl3Of1OA==
X-Received: by 2002:a19:8285:: with SMTP id e127mr2112211lfd.270.1603997591802;
        Thu, 29 Oct 2020 11:53:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8e89:: with SMTP id z9ls733876ljk.11.gmail; Thu, 29 Oct
 2020 11:53:10 -0700 (PDT)
X-Received: by 2002:a2e:b4d0:: with SMTP id r16mr2580235ljm.470.1603997590539;
        Thu, 29 Oct 2020 11:53:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603997590; cv=none;
        d=google.com; s=arc-20160816;
        b=H2xSkHxd4fiwkR5YNHJvBgN94D/ndNBu66yKn6wOqFkrc13WIl3m5ml8p6YvBQapgT
         s7jBdLxQAFZQPQ7iz72lY1xYQ5qrFsdWLqbVHy6mayhYZRi290L5Hi4AE892hbtgbta+
         8Lx7mMui22T06HzgIVoHbXMD/K7yM+W4NV7VhsnNK7w3Sw8lcTYjDrPELVvcVT7h2kTj
         lp/uDI2Iwb1mQyrQPZwkZaT5ujDRyQxPEfmTHjHbqj83IOArJWVE4RNioiq/grHUQJVH
         XpW2Pa9TOFre/sMVdCYDqYl4f9kMRok+cZlmiE+7QMat/AyAjfCrazMj5b0fkbyE/U/O
         VpNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yz8U+6jHNF7eLZlDj8rSpnVb9NWsY4EUsa4dd8qnWPc=;
        b=d996VfVV9W5OBPV52gHgoTdiyeYs40HMvrAvTg0Vll5rjENYel6U+qb6/n/0C+sTc7
         SQzJ2HfJX9G27DyrJj5ME9wTBylmIwJUCED4m6Kyu3bbphD3iYunWLoOtrwK9cyts52m
         +A6M3ReHskHS9GCeTqPnPlI5S876unDCKdtiLm6dMwGYf5+DNrs/JUY+Ot7Mvb22Ybvv
         ii9/3XdYycmpfKuDfcYEnhNBE9s3GeLy44vKmTgF5ZWFE3j/5/d5lZfsJ5Abj9MatvJl
         nP1igd2hCWUUtYjSsHYRlUk2PuPWlEqGdmAkAKj6embzTA5GF5Zn9KJtGz5jqe0gd4K2
         /Jlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l7Fn4Mpm;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id i17si111527ljn.4.2020.10.29.11.53.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 11:53:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id v4so4180434edi.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 11:53:10 -0700 (PDT)
X-Received: by 2002:aa7:c7d9:: with SMTP id o25mr5735409eds.318.1603997589963;
 Thu, 29 Oct 2020 11:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20201029181951.1866093-1-maskray@google.com>
In-Reply-To: <20201029181951.1866093-1-maskray@google.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Oct 2020 11:52:58 -0700
Message-ID: <CABCJKuddxRo7Ki2yEc5mkWRjox+9RUYUczjisJd5QepEXc_EOQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: Change .weak to SYM_FUNC_START_WEAK_PI for arch/arm64/lib/mem*.S
To: Fangrui Song <maskray@google.com>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l7Fn4Mpm;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::542
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

On Thu, Oct 29, 2020 at 11:20 AM Fangrui Song <maskray@google.com> wrote:
>
> Commit 39d114ddc682 ("arm64: add KASAN support") added .weak directives to
> arch/arm64/lib/mem*.S instead of changing the existing SYM_FUNC_START_PI
> macros. This can lead to the assembly snippet `.weak memcpy ... .globl
> memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
> memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
> https://reviews.llvm.org/D90108) will error on such an overridden symbol
> binding.
>
> Use the appropriate SYM_FUNC_START_WEAK_PI instead.
>
> Fixes: 39d114ddc682 ("arm64: add KASAN support")
> Reported-by: Sami Tolvanen <samitolvanen@google.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Cc: <stable@vger.kernel.org>
> ---
>  arch/arm64/lib/memcpy.S  | 3 +--
>  arch/arm64/lib/memmove.S | 3 +--
>  arch/arm64/lib/memset.S  | 3 +--
>  3 files changed, 3 insertions(+), 6 deletions(-)

Thanks for the patch! This fixes the build with Clang 12 + LLVM_IAS=1,
and also builds and boots with gcc 9.3 and Clang 12 without IAS.

Tested-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuddxRo7Ki2yEc5mkWRjox%2B9RUYUczjisJd5QepEXc_EOQ%40mail.gmail.com.
