Return-Path: <clang-built-linux+bncBAABB6HD3X7QKGQEHY7JE5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BCD2EE70E
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 21:41:29 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id m9sf3847069pji.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 12:41:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610052088; cv=pass;
        d=google.com; s=arc-20160816;
        b=eg3JBBzFWXdndO84ZjHXgj9nfhZQNVnfDcKO7FNbTRdd0WqvfMuMTrGV2lvPDdg3F0
         rFYsVOy8r79dqWP2ifx49eR1fN0zW7Fm3kaA3v58l75yFsn+k+JD+biQNc4un4tInNl5
         n05DzerUM6OiGjdsrr0qQii2IBp3gdRGMLRiHmhx/7hDJfp8wxYUYrv/3x0e8iqnfAqF
         mJFkC563rGRRadQhsqQBEQJ4RkErCoDyqwt4g4oeOvPzlBc5yLPHV50PVaBWBxqJsWMu
         vfqI501Gp0Inf8WHK34vg6KtaAippSLPAEI7dUNTJkzkUOQ9WtfS/ZvIzfC2YQcu/8LK
         3ieA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=y2lBqfgKpXG+lcp3bhF7fRG7rWdaj2G7AnCUfk4/UrM=;
        b=ZBy6lFT8L9yQgz7e6ssMLFILYplzE2aS0diHpNYoGf+fubyTkf0QbbGCgYmUB+zgvP
         MUMDvkt5CXd6emwTB5nKJKMmLYE/rEgQvez1PJVTuXATMXLCsy+dpDrz5xLSdfDFtOro
         bc5KRh2euN5pusH7bm+N3y1uFAZd4sqB8BIBzdu/HhKvL2NZugWLhxhz2auSflFOOybj
         6ioG3Pgb2prXerhmOC2PIJqwXTAtWgp2Xq/LDXXxerJ77MRcat+XhmWXXp82RMvAbA2H
         5Xh+QmE3XdEP1/XRR/esNYF32jsi1Jug8D1WsKDN0vo7RsuYEuOFoy+AYu2JH6pVVoPZ
         oeVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="dFVG6+/j";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y2lBqfgKpXG+lcp3bhF7fRG7rWdaj2G7AnCUfk4/UrM=;
        b=brqJVUVGSfOSM1oYyb8k86DqSnnOhi/jHDMMDPSgbUNhEyu700t2C0R7Ibtlgo6hsh
         521oWpCyOTpK+ivcDlvSJ7+q3yb2iGBwVAfKGBLyJeI3rzyIk4BTUCt6gDIykjlxm7+1
         d4LWW5jBL1apcuuzlX9pyWiIFG/hUtQ32jlXKQqWVTLc3fEQY0bXFrlCxULzN3fFgJjD
         oREyb6eo7AlCQKLsyxqi7XaN0eqZ5GJQJpHKB7zFOsRXm3IrybQxe+YOdGQzzUa9d/M+
         DawOsB3lYYCJ1sKFbNLuG64qySorZbSShunPWZZOk+vsMJHSeYxu2TIA2dHtlsfMhP6y
         Iz+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y2lBqfgKpXG+lcp3bhF7fRG7rWdaj2G7AnCUfk4/UrM=;
        b=lzRtnIbr+OD8/BvYElrQD5WbaHJ9ca7c9ZSB3jpsZM50E8zWRgGAC7ANpvuwmFSNdR
         12+vIDp3dPRmUnOsL7sWhvCI3qmt+IYk7tpj8/XFQzesEd4YEAwynuPCKGLQzgSO1nII
         pA73tSeVig56UXSQXoC2U6s+r5CtQpyj5hzbz7cQGn9m/HE8yJYmEthKm7TkMkK+IvPf
         Cn3ifbxTcHebRycv+Cd6JC0z0y7cyblUE/FKYWbJkGBRkI6raPQLOlzz0ZgP2pqukzdA
         zNVNFwhC81ea4BIMC3qReKgxgypcw8JqI5DDQSvK2R7yiHBwTkvL9Ff8NqCJT2urwMYF
         IQAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Dh7xHJeRPTJhPuCQtWgLzwibOmUmomudvrPX5PpxlthJAcPzC
	DNqGBISYjiLurlc3I7+QTsc=
X-Google-Smtp-Source: ABdhPJzDM+/eSvvE6FJeJ+j2SzNDa9Y0jHA25JDgMnUdMT7nnbxkiehiXC++bWk3hUquGLFY+N4b+w==
X-Received: by 2002:a63:e:: with SMTP id 14mr3577276pga.253.1610052088180;
        Thu, 07 Jan 2021 12:41:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3192:: with SMTP id x140ls3282071pgx.6.gmail; Thu, 07
 Jan 2021 12:41:27 -0800 (PST)
X-Received: by 2002:a65:64ce:: with SMTP id t14mr3657873pgv.36.1610052087680;
        Thu, 07 Jan 2021 12:41:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610052087; cv=none;
        d=google.com; s=arc-20160816;
        b=CSgElM6W83aFqT5wsRF6j/rtPh80emXvEfRCPqq8PXm8p4T46pDFXOslk/Z+Ns+9yn
         wmb6dOExDHTnf4JFroiV11gQ1Mjvvn6XDXoewr1lr3S552KdNYVOo7BoRmhhlpNxsQhr
         3mRAt2H05wTeRxWYgLxRoGdqU1JUirNGOwiaJj36Z9zK0V6c5XvNf+tmzOCE101Ago8w
         6kV+V4u58AB0w4ew2wC1Lh86FkB+DYzgmnQ0KXcVUkTT+FGcr3iCc0TUlpRuQ74FtqPB
         jBCMl+N2RGSZXKG1YsqhmY0A/LR9GJeHBNiDeAQU/KV53qwxSNYyxZEA/H+vUM3ySucZ
         tm6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7rJE6Y6cV+wskdxyRf+9DO7rPHAl2YMxLT63Ome6GCk=;
        b=SZ2XLDTt3gnfv7at1+k7yopjLnmhX6IaKoSgMwiRutMplVnEqYuwypvhICQQbJ65Ki
         5sUPOCeo0KAVS/5IVtO6T5IWDBL0sZg/dkS0Vy5s2AdK5KgHwzdXAISlqk3TAUqkA0Zu
         vcOtEjNbBxPyIqwRGFCJQCVXj4k/BfjDFqSLJbDzru9ZMKik7onPsdo1TLCtN9TLHmzy
         ywhhp194qbkyngOn2NAI7OHycVUfcgW26q9VyjEWTYqZ/AzKcpTYlCM58+nfEU+QN9fG
         IV9yAfBXHhVwA6SzRUlk1kd/6rZgz84ciYmcPbW48w7xWKzzd3dgW62pkpKgqBH7qLmy
         Ceww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="dFVG6+/j";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q15si536726pfs.1.2021.01.07.12.41.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Jan 2021 12:41:27 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 476FD23447
	for <clang-built-linux@googlegroups.com>; Thu,  7 Jan 2021 20:41:27 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id 9so8865492oiq.3
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 12:41:27 -0800 (PST)
X-Received: by 2002:aca:fd91:: with SMTP id b139mr258112oii.67.1610052086633;
 Thu, 07 Jan 2021 12:41:26 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org> <202101061350.913E1FDF6@keescook>
 <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
 <CAK8P3a220+yeN8_PjS-jzA85m7QPbqn0oxEqjCzVR9S7p4LaZg@mail.gmail.com>
 <202101070919.2E20432140@keescook> <20210107181547.GA436377@ubuntu-m3-large-x86>
In-Reply-To: <20210107181547.GA436377@ubuntu-m3-large-x86>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 7 Jan 2021 21:41:09 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1RZ3yUjG6eHKFh9E2fV9xkUtviGCQCaROOw-Sna7XCyA@mail.gmail.com>
Message-ID: <CAK8P3a1RZ3yUjG6eHKFh9E2fV9xkUtviGCQCaROOw-Sna7XCyA@mail.gmail.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Marco Elver <elver@google.com>, George Popescu <georgepope@android.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="dFVG6+/j";       spf=pass
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

On Thu, Jan 7, 2021 at 7:15 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> On Thu, Jan 07, 2021 at 09:22:00AM -0800, Kees Cook wrote:

> > I think this is:
> > https://github.com/ClangBuiltLinux/linux/issues/256
> > and that bug needs re-opening? Or maybe there's a new bug I can't find?
>
> The problem is that applying the fix for that issue does not work, nor
> does converting p4d_index to a macro like mips and s390. I am not sure
> what exactly is going on there, it appears that clang cannot reason
> about ptrs_per_p4d because it is an extern variable with no assigned
> value in its translation unit?

Right, I tried the __always_inline trick already and concluded the same.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1RZ3yUjG6eHKFh9E2fV9xkUtviGCQCaROOw-Sna7XCyA%40mail.gmail.com.
