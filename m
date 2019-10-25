Return-Path: <clang-built-linux+bncBC2ORX645YPRBSGXZXWQKGQEDJIBURQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA7EE560F
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 23:40:25 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id f10sf2352450plr.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 14:40:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572039624; cv=pass;
        d=google.com; s=arc-20160816;
        b=R3P7R2MS31+PcVZQ+eVeDxAFWOm7/jVmcC5ADXO6DLORsSc4gXHbBtNpABzkLTRju2
         lK1KupuLsKhrq/zdFul4lGcg7NuwJMxacSacGd7r7+RAbcQ8lzhmz+s/ZoPzfNaO1KXU
         /966YruuyD8TAf//UnsXJZrwb/EZO0WokJuxSSAIThFKAlC8CrBIETe7Ix7L/I0xWCfi
         Vnc418uu4LQQfanSgsqjmWcVdcApFq+NzNvuRJHznLfsnk3kaQJ3+ilzYegV19I/HvrB
         DLP4IWDIj8in5g6Jr5ZWYxC4EZGYfua52SH4lqsIcN1Em45wW6D128nhVqdKkr6M/oe3
         sXHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FulHGSJdMvX6eX9w67kjl5H5y/pcZc+wVxHYZcUd8hk=;
        b=en5xoCCubmyOEeOCkv0JnZJ5apnKguK4rUeCfpYdxqO3XHjspnA0GqaSt7+Gar+bOP
         uaN5crhmaSSFRNT3d/7KVvZm/UV2WLldo5CfihYH387Bk3Z2rRYv3LppcwT6kx7r05Ub
         RX5CpXeE9YLbDx1eZLOnUQasKqnZppwvqUcxLSjSKSd5JstnKx43fuWyeCKPwmAOE+VY
         gwvaHSVP25qBD+bpBn5fmE4Rt322zbBHxCQjwpTk2M2HKA3Wv7W+B2iWu6dOmZfqPeZB
         BFopbjWsOEH6fXKDxOhXWAso+jZTsSa0F52nFrBldQfES6nTnaTAng7WuB4BkH5KmUOj
         opZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nZwUQClY;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FulHGSJdMvX6eX9w67kjl5H5y/pcZc+wVxHYZcUd8hk=;
        b=EFfhWZjJUvnmx+7awTXDv2UwCSZg50/N2K5lEIZ6vPeVxkgumfVMLZ73Ai8EkCPBjQ
         GyWQuxmdaeQRT/5C3bjiMcaTcelrnbqTKZQMXz+QufsydosKSjYmSdTcjKDRglAWnFVJ
         mQ2OJNkMNRTwajZpa/9pk9RXQXl1xmOB3oiIkIDuvfa/I2E4ojzsm2c6D4XA9sy+AAxz
         La6H3Ob8n2BmzlvavfbX+TztVqHTSZPdyfNSP6FHTN7trdoKDfEusArip9ooSgORR1eo
         h0xpDrFORKRbFkfz2rmkRjwVW3goHUioxzPPaMiJeKEfKdiF1Oc9IhazWOw/tqedNGBr
         ajlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FulHGSJdMvX6eX9w67kjl5H5y/pcZc+wVxHYZcUd8hk=;
        b=lVEm8r0AAiYb5WoO3dQhuvFmS4XCkbv8BZq9vrZjH/jEJEwlWISd0xuTXwgE9NXPTd
         hNtxCK41imNH4uwFDtZkdH+oE3Br07OLOGPNasc8tvAoatCWkIExCUVxG+Sj37vVyxw6
         6KJAf8wYwzvAliC2/jT4myx9sd1VUTp1jbgUFh02+xkqBrbiVeuWFzeVd3V5VOPYkw8T
         WllL9lXS7rj6eH628feJjv+xWWlB8CLzwkdqvvRecRyyOwl8axkx9/J/MPfsKhoDMeyY
         vIwo+iwnF9xo/BuX9kWxAFrDs2q2s/0BvFBabRSYD3bXSQrOUOQcQbu95bfoDGTR2ozP
         U84g==
X-Gm-Message-State: APjAAAUMkwgsQKd9AQyNAGcq7AXgSWcO7sCECvljLUw2hT8Oi5L7VkZ6
	5bd/pu0LdNghAZWrTua5FVE=
X-Google-Smtp-Source: APXvYqxa+hm9DaKV1hUxaYEX1IRDfLR4YH7hzWq7IUjc6iiwxUhXG1jOR5XfQHXa7KXJsIHhwH7tXw==
X-Received: by 2002:a63:3603:: with SMTP id d3mr7174765pga.208.1572039624479;
        Fri, 25 Oct 2019 14:40:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1ae6:: with SMTP id p93ls3438752pjp.2.canary-gmail;
 Fri, 25 Oct 2019 14:40:24 -0700 (PDT)
X-Received: by 2002:a17:902:6bc4:: with SMTP id m4mr6272761plt.103.1572039624009;
        Fri, 25 Oct 2019 14:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572039624; cv=none;
        d=google.com; s=arc-20160816;
        b=Wenx020jGeKe08y/ecu49uPti1TpqE6QQ7ee2H2yMqWkCiWiiCZ2r8YKuNV24wdL6Y
         eoEwsMWDaH18Drf35zUYAA4nla5hzlsjE+L242ZK7DGxq2UqiAoqE1YrERZjgKQtKvwK
         aOBEFXqvLUBOHYAPaM/Lp/odZ5jyJE4kC3tgkRqU6408YvULMC79fH9Dw/I7VDKVx/HA
         KdXYlh0wreodqYcaBcKNVRVDPVUBTyY6Ps3BYqgT/A0XODaA902kk4EyI59gIHugvVuH
         oPP0acrwKbeBiLGEVO19OL+tTz5DwUc5cWAB/dcp7GVX7uMlHmu0fl1phkwPERI0vHCM
         hung==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eLRTvF39CVqCAmddGFaUsqwSoY4prNIEuh/o+NUz9p0=;
        b=XgoUYQAsnYZaoHhLnJ5WIryQdaLQsSi6EtEH+4h5kx84betq3rhi/rZluX5FKCRcRG
         +pH+v8E8eDdc0UuJhtomGE7ZvIW7ThkdXIehk+PobAZ4w7hGrRS5tBUbvkxo+b9C6MfZ
         Zfsbhhvluk2fYQagPiBLn9Y1a0E0A1xeVN2LAby/YWWSlsVhR88B4n1gOmwDh/KXJXqx
         OKibdEJubYHKFn8qHhmSuyPeaCZeE3VVFos2A0iz5rvZdueY1fBXo7SaHwixQ8TnKFVZ
         FdGKDtvRCzFoZgcKnGIiiTjmpqWQcRBI9GMXsoIReuo8KuUvtOfQW5HF9ZUBr9gqXbm/
         W/Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nZwUQClY;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id d5si158424pls.5.2019.10.25.14.40.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 14:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id u99so1067347uau.5
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 14:40:23 -0700 (PDT)
X-Received: by 2002:ab0:6387:: with SMTP id y7mr2789274uao.110.1572039622492;
 Fri, 25 Oct 2019 14:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-3-samitolvanen@google.com>
 <20191025094137.GB40270@lakrids.cambridge.arm.com>
In-Reply-To: <20191025094137.GB40270@lakrids.cambridge.arm.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 14:40:11 -0700
Message-ID: <CABCJKue5QAuHi4tzk+82=HD9ts2SLTqn1VZ4OmGfhu0LG8GHfQ@mail.gmail.com>
Subject: Re: [PATCH v2 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
To: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
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
 header.i=@google.com header.s=20161025 header.b=nZwUQClY;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::942
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

On Fri, Oct 25, 2019 at 2:41 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
> > index bbb8562396af..8b562264c165 100644
> > --- a/arch/arm64/lib/copy_page.S
> > +++ b/arch/arm64/lib/copy_page.S
> > @@ -34,45 +34,45 @@ alternative_else_nop_endif
> >       ldp     x14, x15, [x1, #96]
> >       ldp     x16, x17, [x1, #112]
> >
> > -     mov     x18, #(PAGE_SIZE - 128)
> > +     add     x0, x0, #256
> >       add     x1, x1, #128
> >  1:
> > -     subs    x18, x18, #128
> > +     tst     x0, #(PAGE_SIZE - 1)
> >
> >  alternative_if ARM64_HAS_NO_HW_PREFETCH
> >       prfm    pldl1strm, [x1, #384]
> >  alternative_else_nop_endif
> >
> > -     stnp    x2, x3, [x0]
> > +     stnp    x2, x3, [x0, #-256]
> >       ldp     x2, x3, [x1]
> > -     stnp    x4, x5, [x0, #16]
> > +     stnp    x4, x5, [x0, #-240]
> >       ldp     x4, x5, [x1, #16]
>
> For legibility, could we make the offset and bias explicit in the STNPs
> so that these line up? e.g.
>
>         stnp    x4, x5, [x0, #16 - 256]
>         ldp     x4, x5, [x1, #16]
>
> ... that'd make it much easier to see by eye that this is sound, much as
> I trust my mental arithmetic. ;)

Sure, that makes sense. I'll change this in v3.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKue5QAuHi4tzk%2B82%3DHD9ts2SLTqn1VZ4OmGfhu0LG8GHfQ%40mail.gmail.com.
