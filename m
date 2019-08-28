Return-Path: <clang-built-linux+bncBDRZHGH43YJRBE67TLVQKGQEPZX55OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 29539A07BE
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 18:45:08 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id b1sf214393wru.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 09:45:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567010707; cv=pass;
        d=google.com; s=arc-20160816;
        b=L54TIcwPXA3YOTxqVzrv2U3MxDlotp3Or14OXbISbV9y40unx3HGhYoexlMQL1Qi/0
         pD/9MJPCx+qG/fiTr1IChUUzS57ohF4bGQgseaXIEUSvVTOz6vzRHzsQRd3I0dD/kl3b
         G0QkOka5AeSykBwlIXwDl8ezMUmYLutf0PGq+dqeVLwXoPsU8UexyMc/dQAhvqgY9FdO
         q6RZyr+0ZfU4l94DoCENEBs7poS3yfLyPKc/TPR2NBNTDxwajnez/nlkHl82YesaYRyf
         FJuqFLIaHka3OwvgdFGjrswCmADXM78C7EH19BvMbGR6d44th3hluBiAadOjZYDwgaCf
         Ej4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=77LH1+YCX3ZQHlgtYkjW52BmUt3WijYSv7yKmqmV1mg=;
        b=yvKn1Oy+BOR5H2UWjKC7rPS5XyM/kE59Pzake+WVihx4FbB8R1rIdjdPzNvhx5DvUp
         vO445ZFlQrZZcEna3aF8L3nZ7GipMvWfxdfeUAMpiy0h4K9JboIDa7l20ZcPTl0Mzq4t
         meVUwweWYgYhkvBx4JiJHHB6T3tpGrpT47YgmxUWgkPwCiLSwIKym8REBqLDubEGQjZh
         7Nxugtwevok0L8oRmfAzAx3QQcnYZ+iE1HRvixR4OaguZSgiqOA8HtV0Rb6R5Et+Bb8u
         uR7LL4wUgvuOyyhaqYMDtZlRDAPckjPDEqJHMAjf5uQ1XFoUjz8lqaNYn8Sep1wK2dwk
         TOZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WZnx8sHh;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=77LH1+YCX3ZQHlgtYkjW52BmUt3WijYSv7yKmqmV1mg=;
        b=Z/X2K+dYW7nS8Q0TIGJvYQ2Xl77iVyRgKSGw3PmY7CIKObO/twJ1/cXM1+HZSLV/tX
         9/WtF8uxGTNVMEfxy4v4HJU1GuBLuDnXNk24DSvpMF7xxIFdFYOLNCeb5YzhhOqWjdYC
         cBNiWt4m8kOGkjm85vHDh0AcLzhXZyxNQABo2q1XhQTjiEmWIYg6JfwrxpHh4qGEInR5
         rRHK0gJwoQmhxAVuvi5UPFl+10MEe7sVEpS4FAOgTOJOOi/M9Z52cTaT9YlmgCFu5VQh
         uGS7vwuPL2mVAuLHZbzBRBF+cw3vT4rCHDjB5PaMddT24581gCojd98zM1MFm+WUr5ae
         MorQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=77LH1+YCX3ZQHlgtYkjW52BmUt3WijYSv7yKmqmV1mg=;
        b=RD6z4fe12wsXJD3SX9CXpqz6C0QU0/choHzZ+sbA37aMVs0lMSiC6vfJ1Y7tOKwgtY
         LCO0RZ6Uz/hnlBQolDVoaH0z6F677B24oUUUBCk5DcSa3Li3M6Y449Q03/FRSVlbk7Qe
         B5Z5rWKQDRm1UQKrOPtbGGLpfF+iHPHkl9rRakhas2PXbcncFz8INequYwyA+ca8ofAs
         7vx2Mp5LH696+NWGH4ItpUGfxoWtzq5U6YqXXR9LtXl3B3yZ5vFft3LjERHvwjtbZ/Qv
         a5ZriainIUBglYsiEIPGq/RZX4cjkLL9+broDJXzE6BA0yL3QJjaFlZRTM8dR1jse2Fk
         aIVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=77LH1+YCX3ZQHlgtYkjW52BmUt3WijYSv7yKmqmV1mg=;
        b=oSeIJw1qKWOLT80byAy+0jmANdZIJAHr9E/+Ute3vcABRno2RnmSODSyM8l2YLy05f
         3tBJkuybS3usHiJIf/n8NWd2TYhaT3+TRXJuqXNvwvhhlJy0zeVSP46A9VwRt3lJTzOA
         05KIm/B2jSWBEFIjzJ7mBQ2GeUG1nq8uxFegFzeoXSJZsaGt9dZBbxaZAqIAEWlAfS7Q
         X4YKkGFfQpawflmo1EX2kMvRR8JrTL/Xrd5OBVjwTrNo1EfX/w3mT3fD4YHjoZL1Z1yM
         B6zF8gNdC8NuwoJGJjPAwCLxFFDh/c6HspOwQDrS/c2tLEa1snBkl5J76AgBKIrCKsNA
         yQgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXaX9ocH7YjhF8MyMznNdgGqSlUPxo6PpXn/lsO09PCkvzHKRdr
	44rtwmmSVP1rnE381f8g/ww=
X-Google-Smtp-Source: APXvYqwb58uzWfYJgLTMk7O+eP9Zw6fXN7APSKz/KtOX6GCeTaQRVcsTVQVZYMz92lmdZx5g1KerBQ==
X-Received: by 2002:a05:600c:2144:: with SMTP id v4mr6123916wml.146.1567010707832;
        Wed, 28 Aug 2019 09:45:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb44:: with SMTP id u4ls925903wrn.2.gmail; Wed, 28 Aug
 2019 09:45:07 -0700 (PDT)
X-Received: by 2002:adf:e710:: with SMTP id c16mr6028104wrm.292.1567010707291;
        Wed, 28 Aug 2019 09:45:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567010707; cv=none;
        d=google.com; s=arc-20160816;
        b=lfDklmDxQRko2qwXwsQjrZF8AiMkLKxLcx9FS8m5Hfh6JnmdoUIxEIUUcUwqbqw3kr
         yuxMdHDvMht+ZQuvKOeIpu5QqhBZiUxJ59TUOYYhRRoXF/5V9CfggFPE5oJkENoeG03u
         Iv6TFyNNsyq8Hep+L89HEyLUhVjHITm5bEYK5CJ75De9mUD1Ex0qQ/5Z4tsGzkXzqTYV
         KdlWhcW1WlI1Z1BJ4J8nctziM63oTl1gMdAz0R1jnkhYKI4UkvxYLqBU+kUcA0Gwp12p
         WsgXWUai1KxqPZ5ilDu2LgWjAAhuYnWT1rXWR1wtyHGcq3sF7ZVLSC211x7WZoRoZLOE
         0/1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TK1f1dl6MjT9oXeqIhsMWlEpHW6Ya5m7lCHOBn6DQcU=;
        b=M6j+1faDvEbh3KWL/alc4Xgqx0RlLBYV0Z2gbuuxgNCwohnaIwkSUAwU/wvdeN2qyx
         rc0aPmyXmp3NAb+B7bmiO6MLT9taPQ2kkVwJLKqoFVOx9dheopUe06i5RW6nKrR/D14p
         A9CXZp/D5ZhMrkseakWbs4785pnLVKHSuNck5xEqpuhwbQu5GFsk72vDrUi9/LaEHxVz
         5CNwFcJHlSSrbNzWq/MXqwpPs8Bg10e7ZOh7dlVRkCSLqznUa5P2TDay1q1V+zuFcDd2
         A8ET3ouJPQxw8ryAaZcyBHdzTyOKUpJ2kbnkRCqOs8AKNcAmIv6MJO9P3oJkiEhGQUr3
         2iNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WZnx8sHh;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id r13si142269wrn.3.2019.08.28.09.45.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 09:45:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id x18so217312ljh.1
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 09:45:07 -0700 (PDT)
X-Received: by 2002:a2e:8510:: with SMTP id j16mr2619423lji.174.1567010707090;
 Wed, 28 Aug 2019 09:45:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190815225844.145726-1-nhuck@google.com> <20190827004155.11366-1-natechancellor@gmail.com>
 <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com>
In-Reply-To: <CAK7LNATHj5KrnFa0fvHjuC-=5mV8VBT14vrpPMfuNKWw7wabag@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 28 Aug 2019 18:44:56 +0200
Message-ID: <CANiq72ndWZWD-KBT1s-mUxQNa1jaD7oDaCB2+NPiT1chf14Z_g@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Do not enable -Wimplicit-fallthrough for clang
 for now
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Huckleberry <nhuck@google.com>, 
	Joe Perches <joe@perches.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WZnx8sHh;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Aug 28, 2019 at 6:21 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Applied to linux-kbuild. Thanks.
>
> (If other clang folks give tags, I will add them later.)

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72ndWZWD-KBT1s-mUxQNa1jaD7oDaCB2%2BNPiT1chf14Z_g%40mail.gmail.com.
