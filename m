Return-Path: <clang-built-linux+bncBC2ORX645YPRB4VF6HWQKGQEZZY4EZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B728BEC5C9
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 16:44:51 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id g6sf6240518otn.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 08:44:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572623090; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWSo1lm9TMt94FHqX5D0zcK74y2HwqoMb1DQQ+sunUUMqzdKyjJFuN3KKney923mZ3
         ys5m5ooaj4YE8DHRzz+uAdy27MCVxZ6GyS8rM/xeQnSUZYepz4FWrgAj0w4x4fAbr5c+
         7RHe66kzhL/ySBGC6bqcArJKG/RAy7LjaVKOD7gP0i01Ijqye5r09sAqofongNex/JMX
         JAKAHP08OM+OhFMkcACKAB+MudaeiiKd+KEWOWeS2xNm+/KgPAUrrc1GWWWaJOXQLUoQ
         5hODF1E0TE27/DymI2z8nNngZKaIpmLyhzAbiqhib/3tZyheGe54/Jw5jPNwBBt5+4Qt
         TgZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mQtCHXh/qzO7RBsY0zvnocVXjRDwJTWFY3UZgVQer+Q=;
        b=ZQvGThwEkhuwZsmWaS5CDc5miHFkHuoZaJXGOjTjURayF5SC9qpHktlv1Ekekwpk0l
         5Wqpv6RzwOPSDaT9P3aa+5J5Iws7h3exIE3xLVxmLPaoCNoPqLfIlPG+CVQguSI2jbZU
         3vgwr+Y1QPQfSVprcS8zPvsFOjwoJemFvh6177nlgABlv0m3mqgEyYx6xDGPGo3R2n9u
         EulcVkxviRbHeh5+96QsTtwcIR/mrcfilk3ljbPpiIPDX6mdYwlonhb1u1o5b9Amwr3h
         8SmmA8EoYJyJNAOzOp4w0/PUx9dR0hAykFm5EJ4GFzHr15ey7TyyW2c+mcoreFaZUPlM
         Lj/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g4gJ23AX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQtCHXh/qzO7RBsY0zvnocVXjRDwJTWFY3UZgVQer+Q=;
        b=dmJEZ1gZ5IUxRPCbeMoAp/KSxCDGjRqyyVIK/dC+vDQYGJ8OjJRIXYZ92us4zZpRmC
         s6b36qEiARVHDuViGdCHQMK0KqY1hlVpNV5eufcHmezdXSGOyvvsC8lBzGPi4Tq2xHwd
         sISNpcnMrvC+TyE9KJ4flih++sD3KaAl5vfhEgLPLbxUWXwkWqlAiWUFbzM9mu790bNC
         f6sAv2pIr06YMSRkzrLNkAw45hNPSTC+kp+Vk0usbquYwyGDsbPt5QugQP+bs0FAXUu/
         Gzcyjl9caRShPb6V3vnK45aCnrcEhsssEIWfEZziUIjc0P7aEEuXgA9xaI/MzKDxRPvN
         v7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQtCHXh/qzO7RBsY0zvnocVXjRDwJTWFY3UZgVQer+Q=;
        b=rplhbx3QqIpUskAW1D4Ii9zQ5LEJzWThsdWFUR0Sk0sI01HdGYIVldqrkv/UgJxoLS
         RZ3YcRvyqDy0gLkTFZZNvoxtCDI+6Z7v1LHARWvXXbIue+a3TxgcZRuBX3+6Vkl1Pb+b
         8I6JBiXA8WBooDHmTUH26UQY5EjByuhyxBYCxa27A1wg2pYmMZzN7Zbe0ffBzllISIRR
         i37PezaVvVEq191KGo6kVeUl2LxWWRQRJXXzzpd5ZfKwGcUaq9FsCE6QIo0c/o+YXxF3
         WhhhBi3M65RM0CDsPFvhN9NqTXmUFjDA7TiF+cgaBAziqaLzAMmlnMcGpH7KJ7MeJQSC
         rQRg==
X-Gm-Message-State: APjAAAVeOzc9OQFQy5jv2OA7dzoM9HMAA8Asj8Umil76zvtG+fhqlnUU
	UmPX1mACPuAGhYRPu3Lw7Gw=
X-Google-Smtp-Source: APXvYqyXtRSeAhZ/7THEuTdqOarpaDAMOh7UGhhkxoOjJDKckfJW/VI0+kUY5m/Ub/X2WTCJ3gOSlg==
X-Received: by 2002:aca:120f:: with SMTP id 15mr1170194ois.66.1572623090197;
        Fri, 01 Nov 2019 08:44:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2211:: with SMTP id b17ls1083598oic.9.gmail; Fri, 01 Nov
 2019 08:44:49 -0700 (PDT)
X-Received: by 2002:aca:b582:: with SMTP id e124mr3289303oif.23.1572623089854;
        Fri, 01 Nov 2019 08:44:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572623089; cv=none;
        d=google.com; s=arc-20160816;
        b=ZvYJCq7Jx/7ahvNsZKaoFrSR5P7Ih+BDOqQaAFddhQKCrHjyrkqFxLji5sS40axfWf
         9nxaZDpg5ZJLa0/R1LST70bRKiZzuA2+7Jw2TbGrAsTYuUCld/Fqb+A1zATdnIhMdyPl
         t7ZCsLGAo9EpbD1Bwhq5zU3kNGOaEh/uz6y4bPS+Vz+YnAkSL/3/ThZ1ArJ/3LQ5JYgy
         D68xfB/y02GzKgoYznjKQdAxV4tWRQ9sCVMEUR3RPDYeFQ4WkbziC4AdfqN5YTIFla2k
         jq0qAlwr/hMAZvQ8ep89G9ygWFT3WplSE/NZMDA5lNzEr+Kg5LZ8DhiJdGixTV6lsvAA
         xyjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EryZRTfyuksqxAOsiXgBnBsO6Q4g8OGONpcbT/2UUtU=;
        b=GClHR83PUPl/nSNsRD0LIOT6R1tQG8rRlGlYOzqnh87usy9i1AfXNxn9QHBk+O8EgR
         wsByDGNInoe27TNB/9VxQuSzL9OCqMFYiq3pDoBnDwNcaEzWpxjvYit+gXxx7BCYvlgN
         X3vFwDeX4MwQtqYRdqc8xH3q3UXMjs4ORxrn902JMuWeg4KSd1JRGH1bLrbST7XBNvQG
         L2Ov3lYIJfa1Wfi/iTr9Yh6XBwRYQhYmdvfAIC3Ohm/rek6Hyqc7bImtzUL0Q6iMLo/T
         RP2/oMBQEZDh8OKfLdeT1mXiAR1gXcK/Wv0Iih8AeDSduf27N/Pw5sesMiM7igXMv02X
         Uqzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g4gJ23AX;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id e3si398805oti.0.2019.11.01.08.44.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 08:44:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id w25so6646445vso.4
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 08:44:49 -0700 (PDT)
X-Received: by 2002:a67:e951:: with SMTP id p17mr3253133vso.112.1572623088869;
 Fri, 01 Nov 2019 08:44:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-18-samitolvanen@google.com>
 <201910312042.5AF689AAC@keescook>
In-Reply-To: <201910312042.5AF689AAC@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 1 Nov 2019 08:44:37 -0700
Message-ID: <CABCJKudW0tFrWryKj3-xW_eLWPSpCkaT9a14c9PH4a6-TT_=iw@mail.gmail.com>
Subject: Re: [PATCH v3 17/17] arm64: implement Shadow Call Stack
To: Kees Cook <keescook@chromium.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=g4gJ23AX;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
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

On Thu, Oct 31, 2019 at 8:45 PM Kees Cook <keescook@chromium.org> wrote:
> The only suggestion would be calling attention the clearing step (both in
> comments below and in the commit log), just to record the earlier
> discussion about it.

Sure, makes sense. I'll add comments about this in v4.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudW0tFrWryKj3-xW_eLWPSpCkaT9a14c9PH4a6-TT_%3Diw%40mail.gmail.com.
