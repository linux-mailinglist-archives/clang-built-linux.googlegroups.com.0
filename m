Return-Path: <clang-built-linux+bncBAABBTXV4H3AKGQELEV6MAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E30F1EDC63
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 06:38:39 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id 203sf2665352oie.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 21:38:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591245518; cv=pass;
        d=google.com; s=arc-20160816;
        b=GR9Rws+A1fX3xpWhgTd0lF+gGPJNUaSoTdcR9+Mabr/PwHLp0scslEQyGTaCsgNAT0
         YB/kENYijyozo3/KbH/2VOSoPJqQ+NvCAKfK41xxb1LxkPOzvr1AecJZaNu/ZBFAA1Nj
         XMF9WOaPX8UNxzwTmJn4xLNaIHjEMtgQwFkSndjDQE9KNAGEcH4mEjlyuHjLGaIl0YHD
         YG7teGVj8QwEK5OKCO+DFtfV02IH31RjDXLq0HZPpNrtykvaEbxgDlCQZ3DqbUHbnGxH
         z9Nmz8qmoEozfmfRn5GJKhTTKxhzjpJrMGFWpSOxgaTQ+zh8VTmvKCBc6irXIHRcm0KU
         WZVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=yWz3DDC7Fr9kukT/FdA7/jsRSjMpgOH9uWzyHLiMJG0=;
        b=KZVcazm1sY8FCHIgE3IUeINtaJ78dRO/5MOde6YWWn64ph6ttPGDpmwzWDkomAJpIb
         y7IHifMo5zdgfVev0X6an+THX8DujBG9QEv3VkVBRQhuxBxxv4Hx3xICr5FfpcV4wRa8
         pG3ZK4kh/EacDi6NVPKzkWq94Ty7LiwHuqk72P9lApPDzMOVwS/IwUG8zi4z6PO7Z4gS
         ogywGoaA1d0Fs/zD/ELgDthxTCFq0Ubm4HnkmqHvkpBddDblpS99SHBhg0k73mxdfmgm
         KNleI2C61VBRBc2sevjE033v83vHdXS5SD3SKhbbZmdt7dcT5I/ZRk5lYZj9YKYavRDk
         y7RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rjNKa+No;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yWz3DDC7Fr9kukT/FdA7/jsRSjMpgOH9uWzyHLiMJG0=;
        b=GrVro85tY1uhgfBRrDxA6nWP5S3IV0YfnHkQO5BD3QQ7QRSywqRX88T4MBk/XK6oYp
         ll++GYK2VenpKAhFxo6Fq/tDR8l1xQkUpItQPWTXJCBU5RaO0eJeUWev1YuAz+eCyu7L
         nP6a82+ViTbYpIBqi6u6sgoExjo/hYrFCCIZTXnUUwv5vfayAAPaOb7cDVTeiIsJY8Sd
         W16fZMtHF7MEgdBW2HRcp1+nxqkrB7hkgysWCQ+Njmgk66+oM50VnLAinjCembF8EaAe
         gCqKWZT5VU+bNaG4StEzLOicmJj1Id3tMm49IZZbHIImNg4o0i0dO7fUVgPYVXXrMqh1
         zx3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yWz3DDC7Fr9kukT/FdA7/jsRSjMpgOH9uWzyHLiMJG0=;
        b=Rp6IJ3WNGQKLzO2QYoM+9ww4/6DO7xowHe01K0DDNl8avloanRvD4UsBnpUPh25vcD
         GlRXpOdcyhKcGoHCMYGkkBQvILNT20p4cHLgGYU/Hx4+rSEQfxM6PgPcdmIlmo6tL2te
         17OVd0Q+A9I4xHW2qhj4JLVZB2QY1TVlfKryn5xqo0SGl30h/i1QDR1xL4kUmHEzqfzu
         oFmt2/eFiOU8ZOdIlHgQr4ZL+NkQFNFex0b5wsro+BVTqlChZDrUJatOU9dmpi2/HfKC
         w5KNYSzAkr7i0Js+oqgPIRRVpBDuYeSBP7jKrZTfkzc1A6Y6rpCKQPKb5ga4zdz++e0B
         CNuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kEgNHBqhlhEwRSScboaP57DugLVaMGH6FI5QT++cGSDoeTKE+
	MP58aoqucDX+AhUa0tJaNEs=
X-Google-Smtp-Source: ABdhPJzPZVa0jPWp1N71ZuOJSNJYifjjFRb0pd5R01/dMbAGi8etkYfEX9vc+HLBotk6Kg//xFYsMw==
X-Received: by 2002:a4a:c60d:: with SMTP id l13mr2452102ooq.24.1591245518267;
        Wed, 03 Jun 2020 21:38:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a74d:: with SMTP id h13ls289805oom.7.gmail; Wed, 03 Jun
 2020 21:38:38 -0700 (PDT)
X-Received: by 2002:a4a:e658:: with SMTP id q24mr2433188oot.87.1591245517996;
        Wed, 03 Jun 2020 21:38:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591245517; cv=none;
        d=google.com; s=arc-20160816;
        b=Xcz+YvbyRW1D0eEGdK8+zaQ1dHtishRQAIFvjSgnLN6xAdbnCqMxFiw4o8i1APvltK
         FLJMDxbfk61fRGGKCQXDCGX8ReLaiCxQhsVt6HrnU+eM9GkOHCGQA1Mofm7a0xlOl1sT
         /qD2yiYGk92Xwd1R7GbfP7ffsyx0XO5la0s0zg34vkVHUlcq5QcLex4guA9Qs7FIVgOB
         KexT1zCSX4rxF1yrTYQrsdutr98k+75me3P9j/4SjXJygGekfmvKvwPLSeHhF5OpOqVJ
         jYCZiCwKZFDQ0P31YOHTdS7O9xrJ8b124sx1MnxPjxNZuX8fcQpYRRiP1JGfEV4kdqf5
         4olg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=H+yv+HFWJQzExaR2AUnWxL9/UAqo4BkeuEm6/in5QnA=;
        b=wke0R1D32NsdDhKHI3XxuvQOk5amVx+XhIsU+3qcMkgBPB64fYEVahaB0D071KGgee
         7w96HY+GiuipAaCLhFN1mEjbchsnpQ3/QmfROKxqb3qaQNmbRHEwbhQuG88c0lapTQqU
         112Tf4SByG34daefDAV8ayDFTSaKhynaL0sixsbfEU7MqaShc3GrChSzfOI227CAthH7
         Id0iXBhyjKwbj+vRfVWBgyzmQfL9rFaK27o1vqStJdONGCvmhhGOrBl9eSinum7E8TxA
         2WwTtNTyQMthF/nZv47a/GlWnGJ2HnZsvCiOyPkdvw7JJ7aay7t+FFzutS5/pxY9yEaL
         XMjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rjNKa+No;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z6si213446oih.3.2020.06.03.21.38.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jun 2020 21:38:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 04A91206C3;
	Thu,  4 Jun 2020 04:38:36 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20200603233203.1695403-7-keescook@chromium.org>
References: <20200603233203.1695403-1-keescook@chromium.org> <20200603233203.1695403-7-keescook@chromium.org>
Subject: Re: [PATCH 06/10] clk: st: Remove uninitialized_var() usage
From: Stephen Boyd <sboyd@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Linus Torvalds <torvalds@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, x86@kernel.org, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, b43-dev@lists.infradead.org, netdev@vger.kernel.org, linux-wireless@vger.kernel.org, linux-ide@vger.kernel.org, linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, linux-mm@kvack.org, clang-built-linux@googlegroups.com
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Date: Wed, 03 Jun 2020 21:38:36 -0700
Message-ID: <159124551620.69627.18245138803269803785@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=rjNKa+No;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Quoting Kees Cook (2020-06-03 16:31:59)
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just remove this variable since it was
> actually unused:
> 
> drivers/clk/st/clkgen-fsyn.c: In function \u2018quadfs_set_rate\u2019:
> drivers/clk/st/clkgen-fsyn.c:793:6: warning: unused variable \u2018i\u2019 [-Wunused-variable]
>   793 |  int i;
>       |      ^
> 
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> 
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159124551620.69627.18245138803269803785%40swboyd.mtv.corp.google.com.
