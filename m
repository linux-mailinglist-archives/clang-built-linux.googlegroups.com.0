Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOXR5DZQKGQEKP7PDJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BA41916B0
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 17:43:40 +0100 (CET)
Received: by mail-pg1-x538.google.com with SMTP id f14sf13999554pgj.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585068219; cv=pass;
        d=google.com; s=arc-20160816;
        b=zCE2sJTal1TnD/Q7Q5CPAq69UgFAt1lMM4gQhGiPAkkd+tljMrB/PucY/M/WNxFTNs
         c3/L3esBxFop3Hbb6L7e3GcikDQ/6YikxgDlHjz1MDj6XytZeJbWq3tc+M34hODp/dlU
         yOU6jZKkO2ORi8FbNjhY9snmCGgkSQG2eErnRd0OhTKFp/gW3Yxu2KU7PskTA5v/nwS1
         hPevk8RuZSHi/RewGgAcLrAwIbKKXsvI1cqvHBkjEHuP1jgHI72OCwHqloW+VBwC3WFn
         qdhwrkNSifpUu7iTGuv3krbkFJLKgmwQFwGWjicROV8RMBL24DaxuBK8VfKU/u9nBr7d
         X1VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=emeyMWXMo3UbJ8eFp+iFOu+QUvCUbgGom1F1W6sOFng=;
        b=pWAjbdC9QTI/+Ul5s4bz5ManMqy6k5/nLZBdRFrRHzAJYuyEigyEBQRH29YDgMdMpC
         U4mowut/nc7aPdWSgDBpfZUOzs/mQayzcuEjBUKI+qmv9ZZ9MUyyjW9b+1NXe26TpD4J
         7PrK9lIBE4k4XRys2UR+T2FVkvc51YVvRfepspoL0DD3i03oIcChgxiFu+kHBzWGwNCF
         qhIQkK3aM9QVvcEOCPiz9A/w/gyz2LV1QFvXCalUQFWo37Em01lkFSg7XeAFC36Z6gv5
         +N0FzuKuThSWzh4tzAjJdpOywJzhxkgwgQwB+z8pgffehbixRoSS3XkrT8jsuhqqqQqW
         wq6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="PdrJdf/5";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=emeyMWXMo3UbJ8eFp+iFOu+QUvCUbgGom1F1W6sOFng=;
        b=q+ZF5DNEzhD3OM3PwG/3vICgRU7LBoJK1sJPziQPLuHSVj9cSuS4/tXfha4C/KqNpd
         1f2X2cXvrJhwGSh4F4wErLqm2vD6vxko9E5L/HC2dGzhq2tvwWUXF+tbBeDpKEWOJQwC
         FUrDemIU2F3TWNJNIg4Y/IojUPN3I9E8gwdHxeaeUdvSrc7rGAEM57J52OqqfAB+VFw4
         fwuYTZ0XdcwVKCeFQCWK1MYOTNAayzZZJI3BXTj/zDUxDvWrpDZQwab9mDwqKbJfOAzV
         i1DCm4R3FTnn3Jy4aFG9ycnND1PBlAlpwiEPBaoQOpOASfNuiXDdNv3EEIQkPL6zWe/v
         4daw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=emeyMWXMo3UbJ8eFp+iFOu+QUvCUbgGom1F1W6sOFng=;
        b=e9DUCZ6+AKlWSKzsGiLGBqAdsx1GV9Ao8vEQ4Hy4DtFK93U7EF0Tj0gVad76+/nSgc
         zLCU2D+2+YYrzb/MO5/Wdel9nFmpSiFq20gwNqnt/M36mMNrY0avxtm+Zu3ezTHozbKu
         R8IZ4rddrHWWFOik95PAnCT0k5DudWvzi4zwEjnndsjrWKWOCXgNXzp/T9+GsPQNExF+
         GeBXcVy/o7n6KUcOzPO5NapElEVkyThORdXVklxUdC7ggRSXp29yKDjQefcLHgXmC06y
         ddDTmAgZbxhJKyLzOVOjdveDgdrMRYDH3uv0jdfVymklJhJ06EMnDv1H32Xx81gqzLEf
         Y0Vw==
X-Gm-Message-State: ANhLgQ0b3tz9Zf0wBSEkXIEZk4ruk8eVlMygfeND3nHkGVE0ch5FO8pL
	zUhVRwr47XBRm6HzP+OfXjQ=
X-Google-Smtp-Source: ADFU+vu39a+BUa7vOjVBtaGe2GcmEb/q9BdM6+pupyS9yu02tZIwpRkD+T4pF54DmsiDUYTI6gze1A==
X-Received: by 2002:a62:144c:: with SMTP id 73mr30397972pfu.265.1585068218693;
        Tue, 24 Mar 2020 09:43:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls9278158pgj.8.gmail; Tue, 24 Mar
 2020 09:43:38 -0700 (PDT)
X-Received: by 2002:a62:ee10:: with SMTP id e16mr2204101pfi.247.1585068218232;
        Tue, 24 Mar 2020 09:43:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585068218; cv=none;
        d=google.com; s=arc-20160816;
        b=sAsOVSC+74NOLKHdT50YoPnW/qqNc7C9cUj1N+On0pU5wJzt9N525s/WzlBEMj/xRN
         rezTxH04e8ZwuN3jTPKCazMQ0nOLCTraR3Ho1ppAyIONnjQ0DixfiVguc00X9L0sP4DF
         XZE7/BImAbKU4g41rMYTjmq6fXmrkjvV5vE4FvHD+6RvlV9YyyB33PBM1ODz3yKfE5fc
         e9O6UdfMKD5pzDQdhqy/IyAsEAgLZ5bTwmJKM9M8+A34oG+JbcRjLh4dxT0BLSSZGHCz
         8ZVqhcHjPfdN2tdasZjlaNmgWjHdLINPrIf9xjvKatIXk+FLV9SmnBfWuEDsWFjkuUCG
         MOQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0ckbAFa8zCaMccZFo+Gs27f6PIvd3NdOwxh/HtsnAf4=;
        b=HM8tXoEI/l39x+IZJKQ/UiiWYUdeEVXlfgPsy5spWXYSMshEXix09jEL/S82kJVpn2
         5HNo9Ite0Du9WZYlnjqBMfifcAQUmM1Hzm3DkQNQ9UCpNgb7XuhgN9VzTpbemqi0Buix
         jFUFd/6fgRgpKrOZ/EBENjxvflzS0sqOfaUuduz3CYxTIFOC2BS2GfL5ykSYzaMAxZSJ
         V+9zQ6czq7gqO8+Qr0PwNaaVWh0vhhLvIAM4HIoMdJQkT3bytp6jgoEOzjY/BxUwzHog
         kUnReSdZPBMS6hIp84xe2nq0gt4KVsbjN5TKRGKHspUqyp3yzuClnOxdPv81oGU/U/S2
         MV1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="PdrJdf/5";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y5si690590plr.4.2020.03.24.09.43.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 09:43:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id i13so9576059pfe.3
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 09:43:38 -0700 (PDT)
X-Received: by 2002:a63:a34d:: with SMTP id v13mr7028614pgn.10.1585068217691;
 Tue, 24 Mar 2020 09:43:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-3-masahiroy@kernel.org>
In-Reply-To: <20200324084821.29944-3-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 09:43:26 -0700
Message-ID: <CAKwvOdk6aUuAH_o+P8b+WneQ96yhTPGAXqgzH+FJ5DHB9AqYYA@mail.gmail.com>
Subject: Re: [PATCH 02/16] x86: remove unneeded defined(__ASSEMBLY__) check
 from asm/dwarf2.h
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	"H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="PdrJdf/5";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This header file has the following check at the top:
>
>   #ifndef __ASSEMBLY__
>   #warning "asm/dwarf2.h should be only included in pure assembly files"
>   #endif
>
> So, we expect defined(__ASSEMBLY__) is always true.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
>  arch/x86/include/asm/dwarf2.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
> index ae391f609840..5a0502212bc5 100644
> --- a/arch/x86/include/asm/dwarf2.h
> +++ b/arch/x86/include/asm/dwarf2.h
> @@ -36,7 +36,7 @@
>  #define CFI_SIGNAL_FRAME
>  #endif
>
> -#if defined(CONFIG_AS_CFI_SECTIONS) && defined(__ASSEMBLY__)
> +#if defined(CONFIG_AS_CFI_SECTIONS)
>  #ifndef BUILD_VDSO
>         /*
>          * Emit CFI data in .debug_frame sections, not .eh_frame sections.
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-3-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk6aUuAH_o%2BP8b%2BWneQ96yhTPGAXqgzH%2BFJ5DHB9AqYYA%40mail.gmail.com.
