Return-Path: <clang-built-linux+bncBDRZHGH43YJRBX4K4H3AKGQEK2AFFPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 124311EDA22
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 02:50:40 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id e14sf1421025ejt.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 17:50:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591231839; cv=pass;
        d=google.com; s=arc-20160816;
        b=U15EwNaq8kqYNEcwB8CbF1D1TddybyYa8qAok2FX8py41jvZRcoQwUOqEXbog9wz7o
         rtkTaF+6s+8LPF/eGp8FV05D+SkDehMLu/UgwOradGZV6x38lVbg7jy2rRfH66Dw4e3O
         OK+cVhket+SVzjXG2KIID7dDKB/X/wKTieW3ilbZN/3KzQsJe2P3d8it5KTu0tvWF08w
         /Mt5GRNaV3MEh75ZffuVgqT4Lc2bojt4agRMZ09pqZx6iZBDihJUc9BS/7jra8DzDjwr
         djukne97zbiIqUWTWLuAW3t0OXxXQIJG71fXvOd+s6Qf5+xs4AvnTFQUjG06Hy8gOHyY
         Q5Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=bc51co2YID8sKUis/OQZmL/SZEvXsrnwIXsgtpMa3pM=;
        b=KXx8eB2vgKveZkZlrZm1P7q4aW/vAHNOMKJFH62GPWZlHbDyuW4EdsfBqhT/XAz6ZI
         tDrzn7lo8LAWxgUT1XdK5WrrOyaUkAFYbi40bXedu1epxdzigCeZzqCmoqlP358Ssnii
         hk+bZuiOxsySfFz3g8HPh7OhIwg/gjB2OrnhjALsG9fHDlXy17xsofIcmBD6k/Y5M2v7
         tf9I43JFVz6GiiqfPbKTYI1ApEqFtJwFoNqVRN7PnDe3WN4omVzIpO9f0x/d08qO1N79
         vuGZeuDIJvRC8xEV2jG4I07r4es7Im/CmQO81YdDhz5+ss46TcENrkQPOU4GdKTT0l4E
         Lwig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjo5yXOj;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bc51co2YID8sKUis/OQZmL/SZEvXsrnwIXsgtpMa3pM=;
        b=BQz7bYwazEk/z1ZNBN6xWXHI2wFJnXGuob/2ZOki2l4cv3dW6KXPvutSWRqW31pefQ
         hqyPvfmdqKQzuRMKVwj3CjiMBlqDtAmFoSAF55hAc7nPQahNsxlulkDm25w9FR7j4w8k
         Dx2SdVJEEfigyw1XoTaAbymVdDXWkCKh2e21leqWwpow52PL8QRvjaBwJD8KAGYV6kmo
         1fpTbh1NdNKGv1++ra714wKQNnbG+uWHMV6ej4/ZRUScB7X3xien53GF3+MWHNudPDqo
         oK+DuuIcGqZmiN0OH7j5xAs3Todd1jGdkE1OMwj0UNdB3XC3jYBGt+vNme4hUEYKFiDA
         q/og==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bc51co2YID8sKUis/OQZmL/SZEvXsrnwIXsgtpMa3pM=;
        b=XUFtUm9cUv4sBtTHX3WPoymXAiz2PhvGFkjx0fMoadM9Miu/7A16VHHLe53muTjBHh
         kbb1fE8RuPD7KLNXvKmtYxu99XKuP6KHl/BOa5kR0ULedchwHDovFuLH0FN6rvoYHcXh
         7frtxqBkaHGFwqcg6z+U75DebY94V8GLDo1rENEg5oehCObAro3lbeTHv/LIx+0HqRuH
         MGSXLjrlB6IpcHNj9W3xe0fFBVC6iaI8m1tdvTR6E/0QR4Js8FvZ2hGV2B9rrBXH7Eie
         UTOh3TtZEHoGaLxae0dZ+vNcVU5NHbtDQXSBdeJ/OxVICXpHet16XP+SQrO5bWII0syl
         Fu5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bc51co2YID8sKUis/OQZmL/SZEvXsrnwIXsgtpMa3pM=;
        b=ow4dnZHlzMV7r2/f5MsKw33zRmiDJg976P+CaH1hRgOY0fIlqSkW62RIfaBJSyBfQC
         W3dhxRsSUuSwTC7uz959uMewV7Cqy3ASwspYVxV4PLtjVRaojXD9ZoXK5UbrtpRoWZ8e
         AJJnDBfOnURRiRuwlsGYYaqe7ybMZKMMLbrar+Elqtq0QfsGJDIkl01HuxUH4dPV0hpm
         Xtd0W/9x+rbH2ybpqFzpH/ZlZZncVMvRpGTl9ndVSXfVLUmTtkrdwR40h+/nFi4o9rTD
         tExL7J6LH7OWyxF88ATgS6hvyKEX7TVvL/ZrMX7nuXIk9D42IERmKfbWIBjFzXd3YpRe
         VCNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533FR6jAzHNTZ+KOth7+C9dp4C8hLm0Yrw9pOibNdYEu8AD2EDTO
	oxFMy/hrcj31aWVieVt/4tI=
X-Google-Smtp-Source: ABdhPJwNKKIxvHgUZ9160FvxGzxVlVJldDscPbmGIgwDJMIKGkPNraDIxpJbx3teld3XE9pALrNe9A==
X-Received: by 2002:a05:6402:b5c:: with SMTP id bx28mr1994014edb.145.1591231839812;
        Wed, 03 Jun 2020 17:50:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1004:: with SMTP id c4ls4197204edu.0.gmail; Wed, 03
 Jun 2020 17:50:39 -0700 (PDT)
X-Received: by 2002:aa7:c4c7:: with SMTP id p7mr2030950edr.271.1591231839128;
        Wed, 03 Jun 2020 17:50:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591231839; cv=none;
        d=google.com; s=arc-20160816;
        b=o8lAVUSQNkFi4B+AsM5Fb9gBxG+L6czZ4pHua7QtmmP3DaWK854Pv1K+XmT8jQZO/I
         lBUY3yIMMYF7PVDT1BtHFTZez7/oNSyRofqfYVgMs616LDrrwkrNT/QRAiEWEnSj9mU4
         RkdVnyQJU4F5b24C0pgc7JQSo4Ty35qaO20wa9mNJd1D/S4ej1BCRmo4kNoxSzBVtp7b
         t9nXDtcJR5YWtReHNNi6qeel800tuTS1mUJZPSCOxo+mY1vNvIpKwRZdMv8Yhldx1gsJ
         7sQMQbpba1GNGEO7SAz2PZLxaeXzmUEvu4H3EN3lMrskYbAfHjXHyAzegIRxxXXgwYuD
         nhfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MPLZOT/4bCsndxaWJtW6FhRuUjguIqCFp5N2dwDtYQ8=;
        b=axF5Ns1U76v8/JcbYyZxoge3Ko9FOOoAJwua0ANT5GCtVEQhOQ/mGp8sk/6q5IKJ2q
         1RvvCa34xpNxPStOmssd1TQsizwz/FoczTmUDHAIEtifdhbyZNAF2MCVGzLfsF1Kouam
         7CpQD1tMCxQZJTW5hBKxWeqUo8ecutax0DXx93EsjdY5bcDiTMk+BvauU7NBBbYwUoOd
         MTuBuwcNy+6gjfaW7U2jfB3wBntRjyzE5G4sxMMVXKpXe7kOdIl8aiju9P8Mh/huSZ7F
         6Ftwir2cGENwBIe8p/hDNWKJrAKwbFALW+ghgKfsd1ZjSql1eCYRKN7FpLeLhJ0A89pj
         iK/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jjo5yXOj;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id p17si68664edq.5.2020.06.03.17.50.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jun 2020 17:50:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id a25so5125990ljp.3
        for <clang-built-linux@googlegroups.com>; Wed, 03 Jun 2020 17:50:39 -0700 (PDT)
X-Received: by 2002:a05:651c:11c7:: with SMTP id z7mr899332ljo.29.1591231838573;
 Wed, 03 Jun 2020 17:50:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org> <20200603233203.1695403-11-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-11-keescook@chromium.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 4 Jun 2020 02:50:27 +0200
Message-ID: <CANiq72nJhZZ7Bc+VQpPrDjey0iD9TspbtodtGpKaZNz8NCaHww@mail.gmail.com>
Subject: Re: [PATCH 10/10] compiler: Remove uninitialized_var() macro
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jjo5yXOj;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Kees,

On Thu, Jun 4, 2020 at 1:32 AM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings
> (e.g. "unused variable"). If the compiler thinks it is uninitialized,
> either simply initialize the variable or make compiler changes.
>
> As recommended[2] by[3] Linus[4], remove the macro.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---

+1, one less trick split between `compiler*` files.

Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nJhZZ7Bc%2BVQpPrDjey0iD9TspbtodtGpKaZNz8NCaHww%40mail.gmail.com.
