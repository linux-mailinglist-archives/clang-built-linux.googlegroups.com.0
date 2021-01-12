Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ5U7D7QKGQEVAQDRCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1A92F3BF1
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 22:53:44 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id q3sf2542110qkq.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 13:53:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610488423; cv=pass;
        d=google.com; s=arc-20160816;
        b=dDsgdd1U3PlasT361s1LSfyWw7ULiRvCc3tgbXPbnnBZI/P6ZtiaWtNx9/9Gbk8Afo
         AjxVteMFadXNKfpOLAFDKl1XmHnbrejRb/YMVcu/3anHWoebTCGsevTWy3cvi3ek/OB1
         3tWm1bv67IH3DZ9bhan4EQM21pRH27hE4zhBmoI/EOZPFJx8kjEHuxsdbr84S/Y/al9d
         P9ZT+AopLHL+WH118IUeP5VBbhO5xJ45JWJuH9mmja/4EkPnivDeuCWjRuhrKutLSD4n
         iBCt3pO0afF+bhfCEC04fjUu2R7ETPthz2lnx7chA55FTXMu33wOtwjdcjT9wldEX7Rp
         8LKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y+ElRbEUUbjfWCpBli1dUt3zk1uILbvLQQ216lsApco=;
        b=On9TYStzExJ4d7On35VnojDvNnIlmoM5YZR2XUJM0nUqOh0p10aR0iA33HCVX7pxsI
         gfXRICxCwSlXjEsETKaUZOg9TeaDJgHTlkwCt7EtA+tgq1Si4cO5L6UNkr86dN95J+8i
         ex5NRK3Dy0Nz52ADxSA4sDpQtrwiK+ZBFFK+YYyfHgWzJdIu7kke/ZukmAMfLWhwmkCH
         YAWMNOH0DpT2eASxKnexI9k52ts6Reg89d2zr4IM0Zt7oRPO/m+ZHvWqscuhFI1CdsQQ
         /A1goiqYbImKE9m/ylR1JYtrLptUCOZwmGnnCrQvHznsKoiEB7HsJwM1QWRFiz+Xlpnr
         qavQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dGJqu63Q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y+ElRbEUUbjfWCpBli1dUt3zk1uILbvLQQ216lsApco=;
        b=Yy/NxzwFH4JjQeydllCuNBhLQlqTupt6bxzMxIc+kEFvaBl3CdkRemNvCOKSNgmKZw
         KQAu/xPe7KinBllo4fm08jAsMW1QtquPnlK5YY7o8qYfePG3Cdo9xCxiz38ac20nXs0p
         KQzPiG4FgXRTBqDJE4pp1zrF1hJzpeYqKYY4fK3qVGgH9+/XkaCndZIdtNFh+O/V+yq8
         jQR8TugjVoZObEzzvTCUsC17HHQL4mmok1YMPrsitOz++06lWi7izhGAplXBQFavlSNG
         ixgX07LmUULy6Twh7UXum4HrEHLChBUmtBxJd88udSBGUdMUAgwTnw8VvyBwFTZxjQVF
         949Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y+ElRbEUUbjfWCpBli1dUt3zk1uILbvLQQ216lsApco=;
        b=InRl9pXPik/F61UXgt8SNYWB0Qt8dnB4eqmdYqbSxQoCcS8k1h61NcZc1Fap9BsB8s
         kQzlLvRZ/4vD7tJOd2rtzlcYqyUtgp5VyKqK4NGPQstDgpn/GKypi3kGgc7KeGmSDbh2
         m+pc5MV4IjZEslEDdoeYK1ZeDjflG3e3xvXGD8YwBIEvpzyuQUUog0SSXTJtnuq8f0Mk
         /EuaYHDnOJSH035s7xOUE+f/6xbFaTulq015HGfMSeIpNld0ECdh72SAmbeSnc/x8eff
         sBK2VzcnGh905+nfUD6FtNEODSf20oifDET/zB6FtIis5tPJUZscVv2zOGJh74AhGSLH
         /Mfw==
X-Gm-Message-State: AOAM531QIjgtQpCcFzS0bxljcjmViuN5E81UGVMMMq5QMQ7IpqNq0A2R
	zgPkVqXAzNbt6MEj/LjGcrI=
X-Google-Smtp-Source: ABdhPJyW6beqRWtPp319TePwai6trxLwjjRnq4GaIoHfkmBkczhTm6nuxuwFeWKQSqO6t6SaqeLHEw==
X-Received: by 2002:a37:506:: with SMTP id 6mr1730653qkf.168.1610488423119;
        Tue, 12 Jan 2021 13:53:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:f501:: with SMTP id o1ls108843qkg.6.gmail; Tue, 12 Jan
 2021 13:53:42 -0800 (PST)
X-Received: by 2002:a37:a311:: with SMTP id m17mr1617690qke.436.1610488422796;
        Tue, 12 Jan 2021 13:53:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610488422; cv=none;
        d=google.com; s=arc-20160816;
        b=LmEVgvjw7knV5QVZbQmEuNrkiPK3zTfj6c3DdNusw4T3Wa0rGRJLkLvnqeW8G5On6v
         aBpRGP8fUl3RFZHjJXtMALOpgN7yRyUDkcYw0lQWUs6buuYLK8Vc6UdhCH3s7cV//75u
         mYlYBZYMD6WdmExuxJUSveBFbr/WO+FPoMJNRt0C/grylQgCBpxh3dpvv3c8Wt1aWLUp
         W4ZOAaX2yqlYf4bLRSaz/btY65TLhRH0S3faemJTL7XKtXB2HnqDfp6h5lfS8lOeyXXT
         NxIhYRlkOwVhGTIk9OApt7BT/0CEFA4deHMRSeEl6dovBsqfJktQrfFeROilnV8AfAmD
         ZlLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=olxCUvxpcXL3R2GLrBwENG3ouQB8ZYtp3GhVSnmKZuM=;
        b=wGiXmQ9SewA8B/ykxB2n+ylCo/olgtjZIX/GUxE6Vm7nuBGPqi5KMwOL0qdA57ZMs9
         s6Hj9qmUkbtL16kSH6mOMp9IDfuae3YMCZnG254JSxpBR1WVfW9wvXlD6+qRZ2QzLf+4
         7oIQgtAPtjk8MHYeRaeLMKG04wFIL7e7g2yQ8mL+1tytvrD1H92i1WtWuhPHot/fvwOg
         +DqsOz9dwjYVvBRHe7AiVGk3Uxe/eDKBWOtDE6lHIiG9c1Fd8nv3rj0AP/ZVWvdCLuA1
         vyCSsNvM8Zv5UM9AbY5TynIupfUnitxj0RHfMHQ4W/yrixKirAF8DEya4LE2oTntAxBM
         LVcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dGJqu63Q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id j33si7152qtd.5.2021.01.12.13.53.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 13:53:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Received: by mail-pf1-x42b.google.com with SMTP id x126so2223626pfc.7
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 13:53:42 -0800 (PST)
X-Received: by 2002:a05:6a00:796:b029:1ad:6394:432d with SMTP id
 g22-20020a056a000796b02901ad6394432dmr1280433pfu.36.1610488421716; Tue, 12
 Jan 2021 13:53:41 -0800 (PST)
MIME-Version: 1.0
References: <20210112205542.1375847-1-natechancellor@gmail.com>
 <CAKwvOd=yrVKBn9TN2cP8SiB7A8=c2g41PyodKGJu+xEQwAmnDA@mail.gmail.com> <20210112213703.GA1376568@ubuntu-m3-large-x86>
In-Reply-To: <20210112213703.GA1376568@ubuntu-m3-large-x86>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 Jan 2021 13:53:30 -0800
Message-ID: <CAKwvOdkA5kmXhKFDFTApLyT5LcUX2-Xr6vJJ0b8wePunMpLu0g@mail.gmail.com>
Subject: Re: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dGJqu63Q;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42b
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

On Tue, Jan 12, 2021 at 1:37 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> > if real_ptr is an unsigned long, do we want to use `__ffs(real_ptr) +
> > 1` here rather than ffs which takes an int?  It seems the kernel is
> > missing a definition of ffsl. :(
>
> Why the + 1? I think if we use __ffs (which it seems like we should), I
> think that needs to become

This came up recently in an internal code review; ffs and __ffs differ
in output by one.  See also the definition of ffs for alpha in
arch/alpha/include/asm/bitops.h.

Also, I just confirmed that:
```
#include <stdio.h>

// include/asm-generic/bitops/ffs.h
static inline int ffs(int x)
{
        int r = 1;

        if (!x)
                return 0;
        if (!(x & 0xffff)) {
                x >>= 16;
                r += 16;
        }
        if (!(x & 0xff)) {
                x >>= 8;
                r += 8;
        }
        if (!(x & 0xf)) {
                x >>= 4;
                r += 4;
        }
        if (!(x & 3)) {
                x >>= 2;
                r += 2;
        }
        if (!(x & 1)) {
                x >>= 1;
                r += 1;
        }
        return r;
}

// include/asm-generic/bitops/__ffs.h
static __always_inline unsigned long __ffs(unsigned long word)
{
        int num = 0;

        if ((word & 0xffffffff) == 0) {
                num += 32;
                word >>= 32;
        }
        if ((word & 0xffff) == 0) {
                num += 16;
                word >>= 16;
        }
        if ((word & 0xff) == 0) {
                num += 8;
                word >>= 8;
        }
        if ((word & 0xf) == 0) {
                num += 4;
                word >>= 4;
        }
        if ((word & 0x3) == 0) {
                num += 2;
                word >>= 2;
        }
        if ((word & 0x1) == 0)
                num += 1;
        return num;
}

int main() {
    int x = 3;
    unsigned long y = 3;
    printf("%d\n%lu\n", ffs(x), __ffs(y));
    return 0;
}
```
will print:
1
0
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkA5kmXhKFDFTApLyT5LcUX2-Xr6vJJ0b8wePunMpLu0g%40mail.gmail.com.
