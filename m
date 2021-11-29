Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIUHSWGQMGQESLPAN5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655846231C
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 22:18:28 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id r35-20020a635163000000b0032513121db6sf6150112pgl.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 13:18:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638220707; cv=pass;
        d=google.com; s=arc-20160816;
        b=hd/IIGiLfEbDQ8JoDwc/d0ZoeJIYpRj9peM4Ds00ODslZe8QYTd5UE92oDuJdhPwkK
         mzBsK8JZIBfh4TvNnxXnT/8mdR6sm3OZPxE7FHSOkNMYUS313LsBJzcV4oYw8tLWvccJ
         YlSAwaS2XrKVsb3uz1hnDOeQw2fqGcuoipzNNJ9lZ5WWfwqpiCe7bK/Fp/dDQbKh3UL4
         I6UVeLcvxZvCir38eB5KCbMtyBNw4hMhlJKelMsBjNGUqTfHBJkHcvMY9FdP/ReMp18h
         mzPTNjmxQ3pLh5gT9LJUb450D0zI+K1Q6uTTnqg9YFW5f487guNUbs2BSsPWf74k8Lx+
         xHjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Z/Eqqrf+yfOxZOQzLCbtPxWxSO32r/gYXJvbglafOWU=;
        b=jFhhzpQE5n67OHBox6Yx5vRqC12BaHTtkGaD2K/cHb971OVQOStq41EM4aKrsHRANL
         hERCqtUyOjUV3PEo01BJn9ylwIqMduxiLNego6IICSvwlk2oHEvipOMrWuRetuPwwQlm
         auWr1gQAdTJ1Uz4WMt0Hr/mXKjBeg9Lfy6ZJ3QXsVDT5uA9h9edfIlISgQ71SsXsJjyr
         09/b1944WC0dO947+BosEc7hMHI/387x4Ya3xv3CEeW2CzyhcR+uveN6ZUQb2VzkLJfK
         BPE0eAEChmkt5l+CVa0+sl6JEfokdrS43S4jW89hgh5QRypZdUj9EOzHBgNVlCtygXWc
         yjPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="rpG/aye5";
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z/Eqqrf+yfOxZOQzLCbtPxWxSO32r/gYXJvbglafOWU=;
        b=eZ4bvvuh0IAJpIGwh0tcCQpJm1vpd7/xPNlI49NQAnvKdxxr9EI6K2VB8eyXCz9mnU
         Rj8fp7sixIPeLut6P17AEhgj0yynF53aUcWuztTAZR6jl5Z6vvLExxVXJB1iswCqnfv+
         wxBjnjeaFiBqDykov8sY7Luc0JlqPHPNqDTdsAoPVmdKJMn6JvDkhmN06YmwWBYk2lQA
         9NRXpk2Xw0jtZ013UNtvu+Otrnfu+ORQxzoidU1x8j4okFMAZcNDWXQv3EcLxqGgfdeN
         7a+9qVOMIPEA4dtLnM26Mb8r5cBgqOknNpM9+t1Kq70+5jKIZEZiGkBBBrCN07MkRtxa
         0gzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z/Eqqrf+yfOxZOQzLCbtPxWxSO32r/gYXJvbglafOWU=;
        b=sOYWrcHnijdjdyGmXM9Pi60ZVJa4P+cUofmNfwJp+2DgeR+AWkrbJqUflAuOD1MzaS
         oxVr4dHb9a7HQ+f6uiSk0VGZ2zvfTSPRhfKm+MwE+jLonUtH6t7PxFRD1Y4F7P6fnt1Z
         AbaFCqapE7KAm/igrRyfRYQqiSDmW3gZbeybVo6u5Yd9L/23C2lQK0CsKWAeaAysX92E
         RrwmWEi4r9desrlvQ4hiiVIIKnTXjIVjKgHrx2HE2WRR7P09e8F/OEiwewz89n8t2kcQ
         5K0vWdebtSyT7RcOUsAzgf5eYo7ugEMLpGgiO/EFwBNs/XDvzgTDKDFOLjWmZMr9sDaA
         AG7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RC9j2Si0qLKM4dxWFgb+18WEYsnBXRPgIp/ENvW31x785c/u/
	uS91R+7NE3cj0QRj/4YjRTc=
X-Google-Smtp-Source: ABdhPJw/YTI6cPgppE7OCDiPzjNilLqquxMjkIngZJQpfgHLcfJKqK+NUWTX0FSOtsHLz+bvSXe5IA==
X-Received: by 2002:a63:1158:: with SMTP id 24mr36773610pgr.193.1638220707034;
        Mon, 29 Nov 2021 13:18:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b58:: with SMTP id a24ls373348pgl.2.gmail; Mon, 29 Nov
 2021 13:18:26 -0800 (PST)
X-Received: by 2002:aa7:8153:0:b0:4a8:2c13:dab7 with SMTP id d19-20020aa78153000000b004a82c13dab7mr5236172pfn.51.1638220706419;
        Mon, 29 Nov 2021 13:18:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638220706; cv=none;
        d=google.com; s=arc-20160816;
        b=Ci/pqAtat3R4dqOd0yv+BuVoIEnIGfjLJX9Xf2kzTJHt2mDm2Z05lIFRafkdElV/va
         r6Qc95O09jNDt0O2GwQ1lePJIXsKssJgnU1ANeAl2UxVmeAiGe1jNODYyS1ZLxYS8g8K
         uhIO/yimLENXvFrMsgaPPPw7fl/e3VdzxjnCj/FCV9f8m3JD1LHRNYwNTyoEgFIgL0Dz
         VoZV4Z5vxznaQ6Geqod3r/0t5kWhM5wVNdu6XHgYmd06Io3QCK21V+32z07b9u54lq7B
         uWdZb+Gsj1TfC5rsUq/PhlgWmZZLhxCEF+ALibvmDk12K9bobkkgmEf+f1x2qrn9zAHJ
         PunQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=czOvyad7QzzOeuGpRKQ5xe8gck1DUGJ6SwWDygxIo+s=;
        b=Eg+rp44uACYhHtR5gqd6cPP7t/M96U8Uzr7koA/XvQLJe+AkDXpMqz74Qitttu3zp5
         kkPhefZwKOwVf+e2ziPUXBzHYd7Q6WsLriAtldQvfmgMRGdntd7dzCHV5WGRhhB/1RhK
         3ZyDMThyaAkiWhIxGiKCVphQQTEjkwmBWIuD1fgLvblYCeB4cUXOKqVcZed9CRRrUu4O
         LI1ISFzUqdtXURoGtCkTPUV1kX3Ma4lgbhQjByhdtoipvym2Sr37VE0qpNplbpWR/WP6
         ODTggRR0u0rowwmoiPraY8HdTaS0kiVLW+RfmnlNNy2wTCsnhY2svp3VdJb91haqDOyI
         HVJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="rpG/aye5";
       spf=pass (google.com: domain of nathan@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by gmr-mx.google.com with ESMTPS id l17si694241plb.1.2021.11.29.13.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Nov 2021 13:18:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 97849CE16B6;
	Mon, 29 Nov 2021 21:18:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E17BCC53FC7;
	Mon, 29 Nov 2021 21:18:21 +0000 (UTC)
Date: Mon, 29 Nov 2021 14:18:18 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Bill Wendling <morbo@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Backporting KVM patch
Message-ID: <YaVDmh85K7uLjH1E@archlinux-ax161>
References: <CAGG=3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb+2wTJprdVg@mail.gmail.com>
 <CAKwvOdmC6C6qXVUu_bUTdc8dSdCj+CVaJ+qJQLoDX0BzxCTFgg@mail.gmail.com>
 <CAGG=3QXdPWuiRxqJbzzOD_XLR1AMkQpWbr9+Dik3z8c_EKP4pw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QXdPWuiRxqJbzzOD_XLR1AMkQpWbr9+Dik3z8c_EKP4pw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="rpG/aye5";       spf=pass
 (google.com: domain of nathan@kernel.org designates 2604:1380:40e1:4800::1 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Nov 29, 2021 at 01:01:44PM -0800, 'Bill Wendling' via Clang Built Linux wrote:
> commit 3d5e7a28b1ea2d603dea478e58e37ce75b9597ab
> Author: Paolo Bonzini <pbonzini@redhat.com>
> Date:   Fri Oct 15 04:50:01 2021 -0400
> 
>     KVM: x86: avoid warning with -Wbitwise-instead-of-logical
> 
>     This is a new warning in clang top-of-tree (will be clang 14):
> 
>     In file included from arch/x86/kvm/mmu/mmu.c:27:
>     arch/x86/kvm/mmu/spte.h:318:9: error: use of bitwise '|' with
> boolean operands [-Werror,-Wbitwise-instead-of-logical]
>             return __is_bad_mt_xwr(rsvd_check, spte) |
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>                                                      ||
>     arch/x86/kvm/mmu/spte.h:318:9: note: cast one or both operands to
> int to silence this warning
> 
>     The code is fine, but change it anyway to shut up this clever clogs
>     of a compiler.
> 
>     Reported-by: torvic9@mailbox.org
>     Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>

That is already in 5.10:

$ git show -s --format=fuller ecf58653f1e4ab88b4eb62db8fe799826d99d5ec
commit ecf58653f1e4ab88b4eb62db8fe799826d99d5ec
Author:     Paolo Bonzini <pbonzini@redhat.com>
AuthorDate: Fri Oct 15 04:50:01 2021 -0400
Commit:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CommitDate: Fri Nov 12 14:58:31 2021 +0100

    KVM: x86: avoid warning with -Wbitwise-instead-of-logical

    commit 3d5e7a28b1ea2d603dea478e58e37ce75b9597ab upstream.

    This is a new warning in clang top-of-tree (will be clang 14):

    In file included from arch/x86/kvm/mmu/mmu.c:27:
    arch/x86/kvm/mmu/spte.h:318:9: error: use of bitwise '|' with boolean operands [-Werror,-Wbitwise-instead-of-logical]
            return __is_bad_mt_xwr(rsvd_check, spte) |
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                     ||
    arch/x86/kvm/mmu/spte.h:318:9: note: cast one or both operands to int to silence this warning

    The code is fine, but change it anyway to shut up this clever clogs
    of a compiler.

    Reported-by: torvic9@mailbox.org
    Signed-off-by: Paolo Bonzini <pbonzini@redhat.com>
    [nathan: Backport to 5.10, which does not have 961f84457cd4]
    Signed-off-by: Nathan Chancellor <nathan@kernel.org>
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

$ git describe --contains ecf58653f1e4ab88b4eb62db8fe799826d99d5ec
v5.10.79~19

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YaVDmh85K7uLjH1E%40archlinux-ax161.
