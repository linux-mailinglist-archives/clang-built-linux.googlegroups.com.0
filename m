Return-Path: <clang-built-linux+bncBC2ORX645YPRBMVNW3ZAKGQEPPJKZWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 086DC164F9D
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:12:36 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id h87sf1158367ild.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 12:12:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582143155; cv=pass;
        d=google.com; s=arc-20160816;
        b=OSOK0fsVFqcg1Ia2KKZw/OYry1kg/6RxfHv5vYb5K2+c1XACl477nLB7zEMa7QpZmT
         MOslCoUP7UqGjutT6zp+HfjFv9+E3smiqmSuxOVZjwxbYGOBYC8zwodHgVEmgJAZiGg9
         lvjHMy4IjuxX14D0gB8S5+/nWmBittklJegxJkNB/yaMwZISii1Nsh0TQlEE+dh/olrI
         1mrETpt0v6NJuKKmQe5tnyzOxhBemFqvI/yV//ScTlC+PKYZca6ZmMpgXW2zCE6j8oyt
         jxFn3HyhwQ9X9NelUle2nEHUY0pIFxr3GerSKKXDHxZ7lUq+kAQBBaBJZKf5w4Gfa5pA
         bONw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LWkq0S/L1le+O8YUFj2iMO1hiIxrWYX52o4lBkr9uHw=;
        b=jlOy1qCBYaaoswjmJLncnpXHG2Ao8Bks/gpaTouDdv5LTlYr1Jl07JApOChR/XreXP
         G7N2nbLh9jesbuIwhMDGYu+4N9oxHXLul7EhoV/k0qh64cPNCh8Ppbr3A4QdOIZDz3Hg
         WfOxwvPVAx4Q2kDsG0plVQ1b/iRm5axlx+1aYe1+I4cSo665NtUWdvqAfCllZ5PZLNS2
         UgUB1OOax3PUnAo8vfdraakppL2xFApAEIdp5hN3qSwLbI5X2Xu+vrXh95uDesx3EJPS
         NC6aM9GaIu0fOme+Jcv4LioKaBYsCr0tEBLqHJpA8zMa2J6AAkBZNfQUqPbdnoUENc1b
         h6IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KZjz6JeV;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWkq0S/L1le+O8YUFj2iMO1hiIxrWYX52o4lBkr9uHw=;
        b=IzXCCdQanXjhyenTmNohyydZ6kKGaxJtqjAqR5A08UHb0EwTutFKV9bQn4j6hAhRg1
         y2rTVgI8RO5RphwfdntWNSpaGMt6enV4V3F1midznWz7R9+QEUJ4A+I5OE0QekOQ0EvW
         8q3mfs8tyClbfN8igZX+2jFLRCM+BU6YmtDHdXoDJ59+Sew2p+7z/HF0rBVKjZGG8f+v
         Itd53vKSn+I8GnA02QoCZ4GJFVC+r80EASXWR1IQE82Hrvv8ESm+Ufl5V7HUdQHxfX7q
         05f/+rygzPSv0tfJ+mk0Tmc9gcHGxlKA4oaJoXATDgGtHdfVUaJd0GFSezBSqq7lZRej
         OdFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LWkq0S/L1le+O8YUFj2iMO1hiIxrWYX52o4lBkr9uHw=;
        b=qyzx/feH1UYVvBWTgmKIM8jHlqyb5LEwbTb+CLGKWTWQhblAsOOVcKIuz0aRq5p6pZ
         cD7emYjsWTQ0KA7/mUBRHLkW9xUpNKDbxystSByMR+Eg2mDFsdihOLFzNP5aXD2EVKW3
         QczfLuXqd9sTTjwtsB2soUz4eFgvuT/dMWbvwtUAX1Cx+w87XFbQ4+/l5NN8lKdGvRkS
         01PnbYEZ0WBVFg03jbTH+FCbX9ZHe0jtmWTyh7GgJVvUWQ6yferF0NtiYgSinxDGDn8f
         SfBB/KBXXAahZPoh1bmYrdbRp5VV7TDcm6u+yXwwfCxUTDKYMq6WnM49atNw1GkuygJw
         jUnA==
X-Gm-Message-State: APjAAAWTnOcOTKTw12rhQUihOToF2X4/3/l0DQWIwXBMRyaKNdFV+x5X
	pKH/vfrZvdUmTAw8sG1YJps=
X-Google-Smtp-Source: APXvYqwKRMQi78jXcIRxbS+1QStWjLwWbo3nudfL4dFsw824f2KxFBVNNk1wVXRFEdXxsK9bVqznBQ==
X-Received: by 2002:a5e:a616:: with SMTP id q22mr20988977ioi.250.1582143155023;
        Wed, 19 Feb 2020 12:12:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f13:: with SMTP id x19ls179698ilj.0.gmail; Wed, 19
 Feb 2020 12:12:34 -0800 (PST)
X-Received: by 2002:a92:4a0a:: with SMTP id m10mr26362086ilf.84.1582143154620;
        Wed, 19 Feb 2020 12:12:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582143154; cv=none;
        d=google.com; s=arc-20160816;
        b=G0dUwiVYvlsfI6cEahcXruBI764PH4j/L7tUW4U7wZu4ICUslGWtsUS5QzjT88CC0J
         36fZmfj3HujkTtgIZRXPHQDwSn6WQafSuUiNl3HmmpHkBtD27U/I4L40AvxJWeY5FjMM
         fhR9H0Hwr3wcr9TJLjKUpRmilJZfzEbwTfP9Q30MkoYtTYEHQcm4rUXMKb7NpL6Zb8qi
         5kYj/+8qvrNhL1WAr2sNyp3Dp8v66plK7XLDQZSmdTHmQZPruluinZPaGIo9suV5akpj
         xcCFVGGGQ4h06KMkzHjnYRWyTTX6asTpPZ/FADsvoC7y6WN4bMiBEdvjzp/xMES08wjQ
         /Dnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=42MaK4n6+CrelpQTjPFZO9NB2S0O1OTsWCtSJ9pIv6o=;
        b=oQ4UQpcqtshEl6+qQp5/dV5/nayj8QlNFEN8N+dyjlhJs4ZNREFjRvGrRpRuZ18uRh
         Ye+TCF7wL3SfZJZ7oSBEvj2n0avKDeFkfvnHx18mrhe2sBU0GAleEE9QEl1RL0xoFDlE
         qwW7WqYbftHCAiJzU47nanloDS6KtpWt3jvpPC0Yl0MY0cnj6I68+hj1vG6Sv45e/RAn
         zq1t79xSP9gYuqpyWp0TIGR+Lcda4fHxq/lHTAUDTqwwNQzKHmZDRxz91IxaYNXGe1oo
         4CMKSQaJgzS27b9Fb5CKqWJe7BUGIquniob8bIc686iFqguRjxs+pTVGSLnoyYTym08y
         xJMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KZjz6JeV;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com. [2607:f8b0:4864:20::a41])
        by gmr-mx.google.com with ESMTPS id z6si57875iof.2.2020.02.19.12.12.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 12:12:34 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41 as permitted sender) client-ip=2607:f8b0:4864:20::a41;
Received: by mail-vk1-xa41.google.com with SMTP id g7so497957vkl.12
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 12:12:34 -0800 (PST)
X-Received: by 2002:a1f:4541:: with SMTP id s62mr12216061vka.59.1582143153200;
 Wed, 19 Feb 2020 12:12:33 -0800 (PST)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com> <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
In-Reply-To: <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 12:12:21 -0800
Message-ID: <CABCJKudAYATQSVLHbM4873Yr2EYufrBWQ7Pmv+L97uHhBQUe4w@mail.gmail.com>
Subject: Re: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
To: James Morse <james.morse@arm.com>
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KZjz6JeV;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::a41
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

On Wed, Feb 19, 2020 at 10:38 AM James Morse <james.morse@arm.com> wrote:
> This looks like reserving x18 is causing Clang to not-inline the __kern_hyp_va() calls,
> losing the vitally important section information. (I can see why the compiler thinks this
> is fair)

Thanks for catching this. This doesn't appear to be caused by
reserving x18, it looks like SCS itself is causing clang to avoid
inlining these. If I add __noscs to __kern_hyp_va(), clang inlines the
function again. __always_inline also works, as you pointed out.

> Is this a known, er, thing, with clang-9?

I can reproduce this with ToT clang as well.

> I suspect repainting all KVM's 'inline' with __always_inline will fix it. (yuck!) I'll try
> tomorrow.

I think switching to __always_inline is the correct solution here.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudAYATQSVLHbM4873Yr2EYufrBWQ7Pmv%2BL97uHhBQUe4w%40mail.gmail.com.
