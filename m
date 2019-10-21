Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ7HXDWQKGQE3EJZVOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id C410DDF81A
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 00:40:05 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id r13sf1142048pls.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 15:40:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571697604; cv=pass;
        d=google.com; s=arc-20160816;
        b=1I6NRRqyB3PN8/b1dYhmK0Lhwekv2iXHCn4YN6VIfyIeB3g+EXvrh+IS8hFz2Jzjw/
         VQmIFMJ1E1Wq8s/2bLo/x7nuZlUVfZCoJBmy9459uvSvtAXMa1LzRD42NehrLuwkoI2g
         JSD9qgE1rhl78uysh2RyHw0sCIzrJ3u7QNfrZqerApjwtABfI1qn2xDxckXouSgWQ/GW
         3no+b4rozl6lAl5sHOe48jJQcTvbkTJGSNvx2ZpAuI7hKX/E6cfE9M/aiEmKwRyYLrki
         bP1tWOCXKE0g4W6j185BuDIoekC7pPoHhQql7xDyj2UdNiyDUfjkYwK1QkNdWQOFp7Zg
         +XMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wwzKvD5pYfPBjExkTTDDsDR/DZWRT7vahSdYUTGOuz4=;
        b=MDepdQMKKbm0UZ70tx8DywyHPFnYLTqyXpFOuafedNtbnypmbueWmjjPfuI7OL1bqP
         sUg1buUaTdutarTrZRmHscZ18N9TYAo0kV4i4zCL6RJcknfeuf2ZVNcfELYhHf5YdQ9A
         AKep/+NRSCWVa/tos78FvE5hOPmG3w0UZFXTZ4hCWG4SAGlI3bMGnSvvMrkf/vcQPdyb
         nJ6anmiYG74i0ajL5pM3bLPUlQg3y51z6wLUT3CILvOvswTaVc7eBBMP6elh9VstV8OQ
         McufCRzbUz2wBLK9/kgNqVIXHNidTovipL3TKkkUYciunAnCuyebArFwCkwtCdYBZ9X1
         ZMpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O/CXUAVG";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wwzKvD5pYfPBjExkTTDDsDR/DZWRT7vahSdYUTGOuz4=;
        b=ocLwo16PbVvJlbewiT0qIhadL2qM9rMTS2HQr6TsZh16PG6eVaVIh4X1ztFtYtYD+V
         jVVgi2SUffhiWLgmChY3ABG2ICStMft9whERdNtw6TrI7lxRexbWiNetRDipcUyFiIxu
         Yqq96edBOB8KJkCgirt9DlK/bbS16aY0WTfh+DT7SqXDOtEf38+nxXoKPsJ+KNEwvreg
         o3Oasn8CoL+dWWvMi79tfa9tyKPIy5sElT/21FIH6M8jm6zoT7EMgDiUH0IUEIRPRfgT
         fZ/sBJNl2vvbamsvfV0sFbgK+bbOxMcH3bKg6zdsJftVjv30NJoOu4vNcXxqKqmKRmYY
         z0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wwzKvD5pYfPBjExkTTDDsDR/DZWRT7vahSdYUTGOuz4=;
        b=SY9mjxV/YhAFEQnv+Mi6j5aNFS+ioDJv736ys38n9cS0B7CUZgubcU5EHU9ipg98IO
         M/6EjIouSmsNZ8DscZgLFfWVWdA95LzaMhDrK351xRnStBhVem6Pok2oGfjpwWGJTa4s
         XsqGfyUvoOpV31RkXEyoqqjjxlgFaZ6T/yKLC8wdWUyrXUusp4vVXf1FTJahjQW6cMUB
         uAcgblJPg/lV/EkSgCE93CivwUKLFXk736gM183TTp3crxd9k3r5Oz11awryngsqp2sb
         gjVITckScvm0Cw955BUoMw4lwyLRHC3SaQFKmERtfc59aqBR2vCrsdJedwE6rp05IMtQ
         mc1g==
X-Gm-Message-State: APjAAAXSQmWo+JLydUsoyswXBVon6zeAb5mEwQpk7InvIWh51Uc5sJM5
	h2pZqh01YDYekQtTNPf83SE=
X-Google-Smtp-Source: APXvYqyT+OOI0zluB/x4nELeauIpPVQzWfavgb7goVP1c4W5t4/D7Ru5gqpHvnQuvtkeLU84BC+kDQ==
X-Received: by 2002:a17:90a:5d0f:: with SMTP id s15mr588613pji.126.1571697603855;
        Mon, 21 Oct 2019 15:40:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:345:: with SMTP id fh5ls272040pjb.0.gmail; Mon, 21
 Oct 2019 15:40:03 -0700 (PDT)
X-Received: by 2002:a17:902:6946:: with SMTP id k6mr397598plt.60.1571697603476;
        Mon, 21 Oct 2019 15:40:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571697603; cv=none;
        d=google.com; s=arc-20160816;
        b=Xq+cAIzMVmKsDTo++NnVpf8NJp9BM9QtKwEjf+IGOYOk8bXW0zDO/CKMKRghZRFiuZ
         8HzDRp8DFgSFfEPiLlBgHsIwngQh7383ZcShaaNofhk+qoasUxlqYdB6hhJXtMLArlRb
         hG3uOGSDljN+yPVTOqFkDLKpwyCkFCKqRGzf3aXfwZChfVXLuBk7mctXnEzbAfDqzD9C
         AmLXhsaZ7ADEajmYEkDjjQmMeuhqXoFNS3gjoNkUlBebUy6FE8eDiXNUp5J+N8R2TtqT
         /GJdt8rXDAr61XtCfwBc6OUOCOVjKj8JovsqVGFq/OzRVbJmfPeGV3i4b99p2W2IZ1M5
         dIjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+ZsNsXP4OTYt0YNh6qKFB6AFECQX69mBiPpRVt9SfH0=;
        b=vzyZldnp/sDtIuCu/nYpVB/ySSjp0vduJ+f0vXXDsimmkvrz5QOs0pqlPzaCaPdOqP
         G2Oq0oLu9MECoJTonFKwg8Vmdd3OzG+txRmKTKmGedB9bQG0BDoaoHRwC2DUvWar6YV3
         Ro7Hx8f7FYQR/flStTBKuLYUTsNWsds+nEp5DiSJgnbYUB/HfyhCNdoGLTPq4m8sOhBy
         E12Mrk1mTdzyBUjeZh9w55/Rp+0ujne/Cm5hfumNP2Xok8AZlRySG21w7iQovPsYB5U5
         qWlQdsfhg2zTGCkQJk2uzQC2uoc+2bljOOWoU2HM4RrM5fxQKEQ1YEzw8FjQr62g6YSM
         mYoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O/CXUAVG";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id br8si1105845pjb.3.2019.10.21.15.40.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 15:40:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id z14so9978473vsz.13
        for <clang-built-linux@googlegroups.com>; Mon, 21 Oct 2019 15:40:03 -0700 (PDT)
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr100849vsp.104.1571697602070;
 Mon, 21 Oct 2019 15:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-15-samitolvanen@google.com> <CAKv+Gu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg@mail.gmail.com>
In-Reply-To: <CAKv+Gu-kMzsot5KSPSo_iMsuzcv8J1R5RLT9uGjuzJsxCVUPPg@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Oct 2019 15:39:50 -0700
Message-ID: <CABCJKuf-tXu2ZhBMCYTHP3BU8g1i-0GGd7+YvyTDUc1kH2iZvA@mail.gmail.com>
Subject: Re: [PATCH 14/18] arm64: efi: restore x18 if it was corrupted
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="O/CXUAVG";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
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

On Sun, Oct 20, 2019 at 11:20 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
> You'll have to elaborate a bit here and explain that this is
> sufficient, given that we run EFI runtime services with interrupts
> enabled.

I can add a note about this in v2. This is called with preemption
disabled and we have a separate interrupt shadow stack, so as far as I
can tell, this should be sufficient. Did you have concerns about this?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuf-tXu2ZhBMCYTHP3BU8g1i-0GGd7%2BYvyTDUc1kH2iZvA%40mail.gmail.com.
