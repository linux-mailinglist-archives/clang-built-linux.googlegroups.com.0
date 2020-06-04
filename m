Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWNJ4X3AKGQE3LWBD2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4711F1EEB88
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 22:08:59 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id o21sf3908142ooo.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 13:08:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591301338; cv=pass;
        d=google.com; s=arc-20160816;
        b=di29aWvfiROsn95jZDkuoueBS++L4/IA2oTJ5Heuv+pVs80Aq2n8d/y9n9q/otR264
         5Hk7Dl+7pJtuuFRYHQoNjUOgqt6odfusN/kDTT6tdtYFfxh3IB5O4co2is9K8XqNEFVN
         oh4Us+Fch255BRvvZ2pw/ta4otRNv4UoUQBSS26d547b6nE+a5JPs3lopeAOJlJ9R62c
         db94Uyz3zswUSx8OK1Qv6xEaqh0ESgxRwSptapryPtDrQxBUTL/bFfSkkf1wh7HERhEx
         Affob61b6yWdttHEOOkLUxRomfXKWF8kCvdJtMELIL1hwKVyHBAiZlK2DM8GuGJb4Cyz
         Ndmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=99xBdEIr/7B/+ZM5UOwqtBUyFjN9sJsHejrBloAsXsA=;
        b=0oigsqK796bfH79n+jMQDjRDTPd2LZwH6dzNYYIwbaFswjFycw7qFaUGgyPw9j5HN5
         GZOi9FvSejHphokFt/jLVg4Up8bJRJVH4C64sv5vwE7g424nDvTx0rZGi7qJUNmbEgDo
         PutI/F7e8Ls0EuMbuzY2y4Vg8OJgTIZeERLYGRxpZLhFjV62Ul3StWAoZmVQY/1pHfU4
         1pYq/lVc3PV5ChZGIqtfkYcvtYFQmOJsMwcTWz88GSW9XubiePfU5TsUPHIAqVPrr4Av
         2LcP3i15SOAeW7knMents2LKFMB9+WeiDe0J6oWCeQumGqT1k147YzedpEQ5gIkgfHy2
         m9Kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M0mkpsLd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=99xBdEIr/7B/+ZM5UOwqtBUyFjN9sJsHejrBloAsXsA=;
        b=h7x951OLj9U+rPzshTz+Y0cWUj5LZbwOOjeH8OlYBiaTdK7fk7wIdfRvNj9RUAyb0w
         Hzt9xGC/x4GRb812F354tqa3RLUVzbHVslApXt9eHh60tYrPc/1eQehziyNSwohLW0HE
         e7CLv8AH4pzED1Vd54Yr4b4ubh/L6y9z9wLZoqdeUZOrp61kZ/WyZnx636gCFA7YjOA9
         ZLYu08gqcWymzc+UxbgODyyIKWxuwVOJ1xgsy4//cFzTDBNKRH502Cawg8LhKOIYxCtV
         HZdGCFh80Fq1cxSV3v0PNIw5gOM5d2lyNms9TKj9W9+0HZ1ibQjIQbTvEn6JsPXMNMmp
         4/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=99xBdEIr/7B/+ZM5UOwqtBUyFjN9sJsHejrBloAsXsA=;
        b=Cw6RQTEv0lVES4rdfuwW/xfLqGo0fqhzPrPSjBe3cly4Fgy71JZfDY66Oz/qaRpYMM
         HXZa/JfA1sQ5aMdDifjFFmFR3VjbT2Cq4STMIIEQWmDZ+1Wkj/u5fTzNwoA/CVrQZLg0
         B0Om4Sb/+pE4maP8CXT4WWzOjrx8IQ5ODeKaqOVNGXi7q4Bc3DiAaF0tzb2bKQVpEL1k
         c25wI6ld6MOL1Mqt7IVhoLAvYMlVbugPAYzYkqpHVwQRm9XT1ss3zvhdMBMZOAcgjjLC
         hVyCiSpXeB++HS6J53/kSQetuimr+d3biAPuEBiGdKEi7nhoD6zwobnz50i5FO0DvhpD
         IryA==
X-Gm-Message-State: AOAM532TNx3q+GTj4G9zQa2hOwvdNqMfeGSxbole9lT8hlsOpnLpDhRn
	oqgT9HTBIflX6bZoh/SJ9qw=
X-Google-Smtp-Source: ABdhPJwADKbUIcwd2OksuDdHKZDGqkFrKwWdGg0axZwPN3LsJuL99p8Cn+NJPVg5EMok3qnnVW/zNw==
X-Received: by 2002:a9d:6a56:: with SMTP id h22mr5153709otn.172.1591301337730;
        Thu, 04 Jun 2020 13:08:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4fc3:: with SMTP id d186ls1405324oib.1.gmail; Thu, 04
 Jun 2020 13:08:57 -0700 (PDT)
X-Received: by 2002:a05:6808:29a:: with SMTP id z26mr4271217oic.28.1591301337419;
        Thu, 04 Jun 2020 13:08:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591301337; cv=none;
        d=google.com; s=arc-20160816;
        b=oosjpikhARn1WnsQRdwJXwwZX/s26A/k0XJfTnV75v56lldOFgaWt+5gEBY5fK2xwB
         K77KrXWgoYkYPg4GvkSOoSJXmc51Lu9Hp3eBbo2aR28Sha1rI+JMJMvbpHEunXpAe4PZ
         1PortaC5u5igVXAFkNNX5548VihKcFOPBw6qLEOqnqNhZ2/XVGQTIWsnZWqIQePh549C
         176dnBNJv0cqOi3+fIplWUa6KIK66eG65KYL/9soRRjtMsKtz/9eUAjv4upFfKfVZfKF
         LqnSijkfCwxtJ3BxW2W85mXHSumwQYL7AoBHFD1vQN+aEjH964sEla6g9depVY1jXiju
         KscQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AFF1riO+rvi+JtGxWF5qzVLPXHH0Nzh8aZcDxBuji4s=;
        b=v0FTK7dlIMUEnr+2inySmcARkV49rVJsDW2Gm8sKk/uirWQ7b/1nkhRmh2Somf+0BZ
         xMzD4qCgR6KtpKL39pJ4WNsOnj2UVmJwZkxVEz6YNX0dHZXo5Fl6sNydDnplRLCqrzeO
         RLpRniuYsv9mS8FPX3ScBthmW4/0/SXeab5KHrcsRE5JFU6/d+gUywlAgrPSW94rvq0U
         nwUu+X1MbjR10vza+RTiSRrMMgl1CDNgG8jopEuVb0QPYAktsXheSFHOrfV8f4EC/UwT
         nAVMbPjtq4P9IFT5h2exsrx6EsS+q6NHaiiUZ1JpGZKeRwCGPm9Tk6AZyiRmPQwJeMdT
         iYYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=M0mkpsLd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u15si516897oth.5.2020.06.04.13.08.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 13:08:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x22so3782477pfn.3
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 13:08:57 -0700 (PDT)
X-Received: by 2002:a63:5644:: with SMTP id g4mr5811569pgm.381.1591301336363;
 Thu, 04 Jun 2020 13:08:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org> <20200603233203.1695403-4-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-4-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 13:08:44 -0700
Message-ID: <CAKwvOdnNuFySqAMk7s_cXqFM=dPX4JfvqNVLCuj90Gn4tzciAw@mail.gmail.com>
Subject: Re: [PATCH 03/10] b43: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=M0mkpsLd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL,
> and make the (unreachable!) code do a conditional test.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/net/wireless/broadcom/b43/phy_n.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/net/wireless/broadcom/b43/phy_n.c b/drivers/net/wireless/broadcom/b43/phy_n.c
> index d3c001fa8eb4..88cdcea10d61 100644
> --- a/drivers/net/wireless/broadcom/b43/phy_n.c
> +++ b/drivers/net/wireless/broadcom/b43/phy_n.c
> @@ -4222,7 +4222,7 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)

The TODOs and `#if 0` in this function are concerning.  It looks like
`rf_pwr_offset_table` is only used when `phy->rev` is >=7 && < 19.

Further, the loop has a case for `phy->rev >= 19` but we would have
returned earlier if that was the case.

>         u32 rfpwr_offset;
>         u8 pga_gain, pad_gain;
>         int i;
> -       const s16 *uninitialized_var(rf_pwr_offset_table);
> +       const s16 *rf_pwr_offset_table = NULL;
>
>         table = b43_nphy_get_tx_gain_table(dev);
>         if (!table)
> @@ -4256,9 +4256,13 @@ static void b43_nphy_tx_gain_table_upload(struct b43_wldev *dev)
>                         pga_gain = (table[i] >> 24) & 0xf;
>                         pad_gain = (table[i] >> 19) & 0x1f;
>                         if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> -                               rfpwr_offset = rf_pwr_offset_table[pad_gain];
> +                               rfpwr_offset = rf_pwr_offset_table
> +                                               ? rf_pwr_offset_table[pad_gain]
> +                                               : 0;
>                         else
> -                               rfpwr_offset = rf_pwr_offset_table[pga_gain];
> +                               rfpwr_offset = rf_pwr_offset_table
> +                                               ? rf_pwr_offset_table[pga_gain]
> +                                               : 0;


The code is trying to check `phy->rev >= 7 && phy->rev < 19` once
before the loop, then set `rf_pwr_offset_table`, so having another
conditional on `rf_pwr_offset_table` in the loop is unnecessary. I'm
ok with initializing it to `NULL`, but I'm not sure the conditional
check is necessary.  Do you get a compiler warning otherwise?

>                 } else {
>                         pga_gain = (table[i] >> 24) & 0xF;
>                         if (b43_current_band(dev->wl) == NL80211_BAND_2GHZ)
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603233203.1695403-4-keescook%40chromium.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnNuFySqAMk7s_cXqFM%3DdPX4JfvqNVLCuj90Gn4tzciAw%40mail.gmail.com.
