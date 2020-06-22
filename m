Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF6HYP3QKGQEHG24TKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F385203D4F
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:00:08 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id f130sf20534996yba.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:00:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592845207; cv=pass;
        d=google.com; s=arc-20160816;
        b=03bbqkaYle5tM8HtA50t0IKQlfriL77lqXvQUufwdfP146psuCMh07bP7X2ezsBX1u
         3o24sFM4+Hk8ciXfMUbb9Bd0JFCn7RmHhgADQfO8hVFOYUWEzBKSWt1FCXJC7/GuYqtd
         xdIkiiJs4ydIvpdpaZOp6Sw+pkIMkTJ6TLqxd4VC45vM2mhzTn7zChgKZoLfzBzkvkdo
         3O5WDS71LAHaFmMvZobTYxqNrFp52sTZ+dRrWKy+GetV+VszrdIpEp802NJ+k0bMk9Hu
         Gl4yGUUiUoDpbtWtgSpEKMMqmYasgR3858oxDEQvoOzHL/k5oExdwufeaReaOmD3dh+E
         hYBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AT9hjKZ7d3EwyxGcMyXdGdpqPtkE+SL7jkcIsbPp8hA=;
        b=JRrJfMLBwi5nG+EBqqsT5M/Vi5rIkcG66hjmQT4J3ALb7Sq10sNPAANNDWnQFkAtNo
         QAaAVpdOQa5orJYKuQCMpwz8xA38sIR3lWWD27eR9PVWIsOBAy0OQ2BEg2ZiYkU0W3pG
         Km7DFE+trHOGY0Q5AJ+Vli3Es/zB/S9lD/IVz1DeQafTTPewVEQS3qD9WBsRRJghLmDX
         whHIpSHsazqoSKXTK+QPxooeoMp6Lig6YUZVfuNODMFGWcdyLilUxHs9qCR0PcLk6pG4
         CBBIUaZdNMupdz4xYGinsUKRpwMgHN/dOOpnH2PgDyLUmDfUdFFg0PORtcv0CwhMTpmv
         Zv9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qyfkzOIs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AT9hjKZ7d3EwyxGcMyXdGdpqPtkE+SL7jkcIsbPp8hA=;
        b=tnB2jDw6mN5eih6R64LY3+7y/R7PNbSj2RuRT71xOuLn8dwubBmqsCUEn+Rn+w2gaa
         Ve1i8qznR5ZxtOeqCSgJ7KvnF02iTvjcroeBa6vf9xoURxrTFZZi+e2bwwyqePp5bUrv
         aVeFSiyD67l0Ui/AHwyLloe/8rsCOA4G1icA1dW576FNOEVp8kiPkNpU+drCUG7Z5CHQ
         SzCFGuTZIK6AeWN8iuwNiUlXigGUE91vuJP23XwJciX/d6/XACsg6tBAHhU/h/GI1sDh
         tR3XT1sITybGJbfVf1Agy6RLCioEuKUjE1WfOiTfXXT2+HRg74FcWYFPxexVLRk0gSaY
         m5oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AT9hjKZ7d3EwyxGcMyXdGdpqPtkE+SL7jkcIsbPp8hA=;
        b=juiLLER/leiRrpb4UtnhIOn5tJqLQOOAmIpgjoQ0QXBswSz2zvHGZViFCx3zLhcO5B
         mDa0lmS5GLZEDeOzyZhSTPV9RFodlt8N8tADLV3J/mVZ8n3w+D3YEksltTyT5vTHoi7o
         nidjKRk2ngo5tEIrNDR5AAcAmvgIFM212J6IAJPdY3Wxo4iaQgOCL7xSz1l9VeuOePGB
         OTQFjskQo73NWqdBwqykmsX8xFE9fDAS7fTDQ/BpYRKZCBUFiV2oWuq25PpWehTC6u/w
         5qT1IWz23WEFQlBS1C08UmYH6bdymYe/4p44lOVkir0PWCbxWmtiUwPxBJrc1PPkBW9K
         Lq8Q==
X-Gm-Message-State: AOAM530tUdVs9SDtYcs/+Fg1mAJ7iVKBoSkynTgHAURmQnL+ozUOtyNp
	PSocVbL89fjkVI525ze7Asc=
X-Google-Smtp-Source: ABdhPJyAkp4IALSnhemHSY+QKnMxS+wgfCnWhd9AR0W3Ib13zm7wLVy31wgTJOcVYQDsqCjOpIu0sQ==
X-Received: by 2002:a5b:18d:: with SMTP id r13mr27880620ybl.235.1592845207333;
        Mon, 22 Jun 2020 10:00:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ec5:: with SMTP id 188ls6671803ybo.11.gmail; Mon, 22 Jun
 2020 10:00:06 -0700 (PDT)
X-Received: by 2002:a25:c705:: with SMTP id w5mr7862692ybe.206.1592845206791;
        Mon, 22 Jun 2020 10:00:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592845206; cv=none;
        d=google.com; s=arc-20160816;
        b=lXX9u6tS2PbqB+/gzV5ESucXSOB9Wss7iOuJBwfJt0u53H59Tm5t/pQsHDQy9SK+rx
         PJXXjvqmWiXWXUTdrFR+g7GeqXo5q2gatlPAub09MM58rKecpr15VTyl1uBmdKfUZQWP
         a67R+lTveQDLlin/H2oqT0ok1vVn4dTOJdMIyVgEhOxNWVFvG3v6HHN9RcHFzXPGv+UR
         hFESh5B3vWkspWUXa+kRNQjquFopafq9wtsK4FqD1dBtsf3gjA5xXR2jOU+Ha0b5aKFb
         kqUL6Uyx08SXJsyoGH184Lw4g2d9kn/gszCtfHPRIvgNUP6nWAdVI1mKYy9WjaKh7aNI
         mqJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5BGCSUQL5tzelRNBUzUtnoDU4FBOgbBEZDAqmf1y2tY=;
        b=eXCQvF2HV37fPwZhT5oWtasNF76vGfLbJd59o3cSuKoH3WI49R0HYxOOsqoHpbw8Z1
         9//pbdnd5a1SQKH2/iQ0qkFAKIfC32MyuH+27anm/1yryr18NFoTlJk5vBXCHraXBNvJ
         oDezTCjVKHW0offWjl1JC7xrgmJpl5W8lV357sQRSJxfxkjzomA+NzalxcU0AYhN9BWS
         w3wuDBe8cwCkR8lfJf0Vw9DCbiNaIY0gN6Kcp697DlsOesUme0zxDWFibd+yf82TLQoc
         MSUGc/TGDZKQD164D3d3Rdc8dLeaziZwduRTAQ/u3oGFXhP0mWnvzOJiRxORtIQQWJ/9
         rJBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qyfkzOIs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id k75si388724ybk.0.2020.06.22.10.00.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 10:00:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id e9so8404168pgo.9
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 10:00:06 -0700 (PDT)
X-Received: by 2002:aa7:9abc:: with SMTP id x28mr21131306pfi.39.1592845205633;
 Mon, 22 Jun 2020 10:00:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200620033007.1444705-1-keescook@chromium.org> <20200620033007.1444705-2-keescook@chromium.org>
In-Reply-To: <20200620033007.1444705-2-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 09:59:54 -0700
Message-ID: <CAKwvOd=a+aSb5Scg=jD-jDfvnKJjOCVQ8CidgEo-39g2b2z-3A@mail.gmail.com>
Subject: Re: [PATCH v2 01/16] docs: deprecated.rst: Add uninitialized_var()
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-spi@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qyfkzOIs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Fri, Jun 19, 2020 at 8:30 PM Kees Cook <keescook@chromium.org> wrote:
>
> Nothing should be using this macro, and the entire idea of tricking the
> compiler into silencing such warnings is a mistake.
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  Documentation/process/deprecated.rst | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/Documentation/process/deprecated.rst b/Documentation/process/deprecated.rst
> index 652e2aa02a66..943a926ecbbb 100644
> --- a/Documentation/process/deprecated.rst
> +++ b/Documentation/process/deprecated.rst
> @@ -51,6 +51,24 @@ to make sure their systems do not continue running in the face of
>  "unreachable" conditions. (For example, see commits like `this one
>  <https://git.kernel.org/linus/d4689846881d160a4d12a514e991a740bcb5d65a>`_.)
>
> +uninitialized_var()
> +-------------------
> +For any compiler warnings about uninitialized variables, just add
> +an initializer. Using the uninitialized_var() macro (or similar
> +warning-silencing tricks) is dangerous as it papers over `real bugs
> +<https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/>`_
> +(or can in the future), and suppresses unrelated compiler warnings
> +(e.g. "unused variable"). If the compiler thinks it is uninitialized,
> +either simply initialize the variable or make compiler changes. Keep in
> +mind that in most cases, if an initialization is obviously redundant,
> +the compiler's dead-store elimination pass will make sure there are no
> +needless variable writes.
> +
> +As Linus has said, this macro
> +`must <https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/>`_
> +`be <https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/>`_
> +`removed <https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/>`_.
> +
>  open-coded arithmetic in allocator arguments
>  --------------------------------------------
>  Dynamic size calculations (especially multiplication) should not be
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200620033007.1444705-2-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Da%2BaSb5Scg%3DjD-jDfvnKJjOCVQ8CidgEo-39g2b2z-3A%40mail.gmail.com.
