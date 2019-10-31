Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSVW5TWQKGQETBRZ3QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6722CEB630
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 18:35:07 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id i25sf6999815qtm.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 10:35:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572543306; cv=pass;
        d=google.com; s=arc-20160816;
        b=JaiiW39T37rRpFb+/OoUk1DNSVDtVhyqOBr/zBtU8XTIBmsGjFpEKq5pyaWE4zb7dS
         +Bsdhot0wzJRQULIGDjgklgpAZ1saIWhRLQAs29xxT+4z0zwWMXVbp2z0J+dfG2ASCBa
         zKMK8DNPG5eHomUA8b56dbFQi5kBE4B1qYB7qWowFwiWdRFQxOEGSBozEkMLaV0J/oHN
         K6A+otwznQ4SxAl8pT5RmrZFyP0co24eZffMckQ1XjMwr9DdmzyMtfhhTY2dNitLHRtl
         8mOoOx98iep6TdaEqxQOEXCIpQ9fypSLKPTJMVcfwVNqSMY01+JaIrsf8GpIYGNhfxdS
         ugvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=5ys4gg6BoTZdQs1j/qdVhnN09tE+oKoP+vrZnKwj4dE=;
        b=LVNe3YZ6KJzw5x2UECUWtB8NXN1xdiZFtLTtCgVYCNOS697f1lGT4fc9w2YVmLuwpY
         2Vk+MXEaS31J0MoOzfUUAE97MuQXP9Bx4EQNs2Xxu7KH7oxAskFImdXz5mGPME9IonTQ
         G3JKWgCBlP9YiaO6HuDrgmFfuxtpMFb480OTV/inPo80V9v2/pUV8GP8Ouu+lS2s+oX3
         mQjc7JEJxc8p1YC+bmpsZjuNADQybfEaRLUWT+T3FSw1LQzVqCw5bQpNzsVNigfVt4MV
         Z4emkXXRFC5zqlwMWy6a6Wf4DHdnoFP4PV+2vrqV9WeJexcsDEaUj3VeWAbsgnSpLpfZ
         5ZUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zkd+dczq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ys4gg6BoTZdQs1j/qdVhnN09tE+oKoP+vrZnKwj4dE=;
        b=D0cta9xC7N1Lt5yop7EWxMJCIqS0ENZZOUTRo/A9dEaYXFwHe2mOdk+nsAd+Af//cA
         TY8lpeXo0h4FsQIn3TzEe9K3bLIlu6sTAva0yEq5Gk5FlG8fjRkicugZbsX6zH87SeNE
         HAH/DKG07TqWabIwbcpE9NyRU7j1JBRFgeVcxfgpLBUL5lNjUuy/VhjIUkS1sU3lSgvA
         Xtr1k19TeapBa5fK0JLTPH1teWylUUX8/sNeZykmCF5dMgEqO3C1eW/f2I4i9UPouJLB
         SeRg2YeQcOY9H6oYL+Kfk2RR8X2pOqx8uZfzlr9GKS0K0giqMYP1Yd48vEiAO4dlNFRr
         lIZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ys4gg6BoTZdQs1j/qdVhnN09tE+oKoP+vrZnKwj4dE=;
        b=ucbbRuWd6Krs9cclQU2KHdoBVj7kc8ExGbD7927fipGJ43L/Ya9c7/ujEKe4EtPMm2
         A8DEjvX2Swq841OqArbOpKRpo7toIJLIShIuUYUKuRtCbhlMKv1vkrH637QUrZPOOUX7
         3Pk70eA7hP0P7prPUjfcUCV3W2VNwvsjN9EuPrGKHCdgcviHtgrj2u/5ggiZiT0VHWqo
         70dOCyPl/DmUEENbxOdwYk3yx0Aef7kzMaA4KRmr1iuAY1hTQRV/Hoo/LPaaS0nZ/S6p
         hfPjgTvnYZmtxYe0DN47PjKvYUrq5BjrNRts38Zfu0eVmqwSDGgulEgx+3vRIMsPgmM4
         CSzg==
X-Gm-Message-State: APjAAAUa8faWNgWeLV3uCbCv12g7+kntHpEhXkAADIAPuiLeJ3uTFKHX
	zonfzrwozQdwv1InRrdnYM0=
X-Google-Smtp-Source: APXvYqzdIl+ieW3jQ/mQ1RdBgZbFgHjJcpsIhX9Wn/LE9OQfX6mThgcGR05rNVxugmE1P6YC3scM2A==
X-Received: by 2002:a37:ab04:: with SMTP id u4mr6490731qke.114.1572543306448;
        Thu, 31 Oct 2019 10:35:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls1192592qkf.1.gmail; Thu, 31 Oct
 2019 10:35:06 -0700 (PDT)
X-Received: by 2002:a37:a892:: with SMTP id r140mr6323331qke.178.1572543306035;
        Thu, 31 Oct 2019 10:35:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572543306; cv=none;
        d=google.com; s=arc-20160816;
        b=H94nFwKUZAnBDQ8ThVPjOE7w87eH0nUuP+Eujk5FagX5IEbDWumnuQknlcZklYW8nO
         /1/rH5GPi7NUd9aSW3kihN9XPA4mAl0FsBqlzHkenie1QoW50GKYS/WCyeDwIdxLGMpC
         VmPLXTR5KR8tNefwMqAdS7Hunir25MnGS4tMLYioIpIhEukOG8viWoa9g3ik6GZeuN2i
         Bl0vKNpyByYUpukW+8yWIMfrU4HTY5yqjTiBtzsvW21MdGgeyF0dH9ICXrvFqAjJbOmX
         8lE8X59vbmBj5x8K4/8OfGGdEoFyZHj5PocMOW6c2B31rGYdCvJCgGObYXQARrd7n0lh
         NvzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6vxne2J2U+zueRlGB+uihx88K5obGcz7JfVVNIfE6MI=;
        b=eIFIyDxOpo0XBBdLZgROZnaJMjxbhfpjFkYyrHKsH09dTxeX6e4oQOogdraCkTH2i7
         B6Uyh09GSj9+O2aU9yksdPsvSUOyGO4JfpIwle/Fx1Y3rBYbr2zfTJNOfNg9YF4DQ+QB
         VYivbtXOMDd97aM/cSf6D0Kfrcj0tDMmxYrF8Wb8jbxdQgHqUdTwmMF2fhqZekKM91Sl
         8qqJITMzuOobh78U135EXhaAWnaLQvGHH4bTgBA82HhBbJBVIa6b4P04SyNTaPKKTU5+
         qPvx5lG2ROcV8qKjBuTnvehxj/Io7jESCrsUliLyB0fDZ+zxPFutB+ycjnRJRiqdJkSS
         05bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Zkd+dczq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d189si302668qkb.1.2019.10.31.10.35.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 10:35:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id 21so4819045pfj.9
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 10:35:05 -0700 (PDT)
X-Received: by 2002:a17:90a:1f4b:: with SMTP id y11mr8889337pjy.123.1572543304777;
 Thu, 31 Oct 2019 10:35:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191031164637.48901-1-samitolvanen@google.com> <20191031164637.48901-14-samitolvanen@google.com>
 <CAKwvOd=kcPS1CU=AUjOPr7SAipPFhs-v_mXi=AbqW5Vp9XUaiw@mail.gmail.com> <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
In-Reply-To: <CABCJKudb2_OH5CRFm64rxv-VVnuOrO-ZOrXRHg8hR98Vj+BzVw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 31 Oct 2019 10:34:53 -0700
Message-ID: <CAKwvOd=dO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw@mail.gmail.com>
Subject: Re: [PATCH v3 13/17] arm64: preserve x18 when CPU is suspended
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Zkd+dczq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Oct 31, 2019 at 10:27 AM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Thu, Oct 31, 2019 at 10:18 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > > +#ifdef CONFIG_SHADOW_CALL_STACK
> > > +       ldr     x18, [x0, #96]
> > > +       str     xzr, [x0, #96]
> >
> > How come we zero out x0+#96, but not for other offsets? Is this str necessary?
>
> It clears the shadow stack pointer from the sleep state buffer, which
> is not strictly speaking necessary, but leaves one fewer place to find
> it.

That sounds like a good idea.  Consider adding comments or to the
commit message so that the str doesn't get removed accidentally in the
future.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DdO2QjiRWegjCtnMmVguaJ2YHacJRP3SbVVy9jhx-BWw%40mail.gmail.com.
