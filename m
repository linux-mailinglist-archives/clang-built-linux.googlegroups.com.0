Return-Path: <clang-built-linux+bncBAABBZ5KWD7AKGQE2YMRCGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id A42212CFFB3
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Dec 2020 00:19:04 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id o12sf8040074qtw.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Dec 2020 15:19:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607210343; cv=pass;
        d=google.com; s=arc-20160816;
        b=qaHPvu5dV5CoBnZw1b0zHdYH/2HdW2tcDmqVqUFgWl3fYtTC5dLSy4OYToiuLMQh0Y
         TDtN8ltLUfP1Q8tZGU+ZmF0aVJoYQ6McTAlkaRCUWOoBux8lVleaoA2G5KgJBxUL62ur
         QMRGbF+BCUvL+halHQ+yPtjEIOIVIiYuyym0kVbYwzvdM48cIZAFtpOVeJFgu8leW/H1
         PvK7I+s8YxH4WAT7tdznfa+tKTA1hlUPoOIRBrX5zSY0U4z/Vd60tX7eXcdbAOBCL7pB
         ovSUEY6rXIwW7IzbhyvruTTEJ17W9TGkbRaSrGo4X+s8GcEJ5+NsB661gUD80kqtXqJv
         CnYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TIQdUGr25UdLbroZtmLyLA5r82tSM34dVsx3rQ7ycrs=;
        b=jEOk0JsxuUvGzgorClRTMK6bq0xqH3P1ROG9pSQPzHpfxOnHQXh0qH/1jAbJiIRynD
         caitzrcpTTF5HbvBiWWnSES7zBjb9aw0BYgJBUReMZrxMibkSCVA0zUm3o8xZfbFFz9O
         +zwOBJBWULpghdmchDKhRvt4LGukNoVD5ZDChf3DEsNb2Rp5/dRRAFF4D9gUve8MjZWD
         6+6+Qj+sSb9I4myOCP+zc6hg5rTTEDL90MCnrLSetWzbl50GmOU9P1bPpgmBPLooeZx6
         1yZPgV3dxnkRZsLNMIjB1aT8JkqSVZDkdp0QxqoHg8PTJIY/K+uCYhvrPsOWv5MP4xFC
         JG1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="sbFs3/9L";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TIQdUGr25UdLbroZtmLyLA5r82tSM34dVsx3rQ7ycrs=;
        b=siWY0fQEoZ2AKw8LPSyQUpfUXBzXsXPRXvaRW3NvX8YwZx4b6CY17Xaedv7KaPm/MH
         N7yZviOtgKxBDCLdR9oZCjNC+JxBKT1QUgCKJ679xDLkEKpjXun5BflpRdPO2evmL2uQ
         DsgjUzzhN5SVLKscks7JuYACiHvw41B6b8cihNQ01WKJBGYKvwxWM0Nq/9JzUfYYhycd
         L3V0hMbuFLMfjDPCIuLQj0zehia35bQNw2Xu9N6KLMd7qLW03fcHabYKrqiKX+rDR2kz
         Kr8bUBxwKn61aferISMFYRUAhVnRC22/L3oVfHMyRfo91JzCiIl6SBVExTKG+i6LQMmC
         W04g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TIQdUGr25UdLbroZtmLyLA5r82tSM34dVsx3rQ7ycrs=;
        b=qOAsZipHurFGTS65Ugbn2VVblc0cX6gg2n7sM7Scap39qnBxKErGHUrGYUbm5OvTEx
         fUG7D8geA6CTpOdodiAVPplpQWcgZvpAtWOyNsMBVKGIC0hV27Kzh/1EooqKdh5HP0kT
         MLJRgC9Mq7wzV0lggSuuDjieTBw9S5wXtBKx5Z0TQDcY4s5t2ap3g7ESBzi/Ve58Bu07
         w5CXhkUO0wjO9NfneNpqA8NLmC4icNQXmOA7GY5yifYowUVfDZddDFuVRgRddftuHKGl
         jgHwimxj6hUFfpqbUdbWNH2KeO8Lo/VhsXSBtZkLhiG9AQ6TzR7gZJvbBfAdGiDtFtq3
         iz+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IWPmPMDdmwEw1wfT1dACmpPbuykBhA4NNg1gRt8OwTRF0b/c0
	Ybns9RrytThgW148rRDR6MI=
X-Google-Smtp-Source: ABdhPJwYu7cDDbJ0cz6zxwwnU+1bWNA0O3OSebBTfCMIo7T/OvmSuzYae8cfA+z4hmmsfP0NH5N8uA==
X-Received: by 2002:a37:a97:: with SMTP id 145mr16500159qkk.465.1607210343502;
        Sat, 05 Dec 2020 15:19:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2795:: with SMTP id n143ls6154855qkn.9.gmail; Sat, 05
 Dec 2020 15:19:03 -0800 (PST)
X-Received: by 2002:a37:e09:: with SMTP id 9mr16669108qko.39.1607210343197;
        Sat, 05 Dec 2020 15:19:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607210343; cv=none;
        d=google.com; s=arc-20160816;
        b=TD1LkawEB37V4AScuURzxmttByOmxCq5WRW6hW6gAAVNqOsl1sxhwKATkZ29068bRY
         P7YFi8d+T7C7VzoMhvfFYG+ST9sQAycrLNd1kfxObUFz8PqzJqDAzyxh8zYcV3v+LRmi
         7B9XjeKKhhHZcyHEFuriD8szeJFE12tmoJnz9rD6fJL3b4xb3Pd/ehclK68WQ8yXBqq+
         RvQyekTzhWKLpmhxbEHBXlSCkA79uqH2B0LVsIJrZHpU4fCicOqP1wCtHUOk+P//wOV+
         fwjwk1BV3KPnG+vphFm+Ek0KyYc5WeUgwm37y2l3rnv0DSw0bjbukYQI4qtv2vZTMnXb
         PSyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aqANGMJY+qQUH+c/3I3FS6N0GPm5kqIELNuG0yc/25s=;
        b=GXrBZD35EiUyVevgKrmAp25EhJP5W55CLb69aivvrpBOFyPEZVJbCQ4DeBmvKNV9xF
         NJ7DDtztz0dLAmQSsjNz98c2xS1g73UKbKFdR1FAtefLE/2AAAcuUR6eZreQlmuIBJPX
         xtSvZmSU7Zz5kDBE/UqnQ9V8VywAyQMHhaKqa68nqTjqfp3OWENwFKlZNmEw+ND+Bn++
         4D003EJvNQbBAP+yMopUzTGvTa4FxsuomCLMrhBynSMwSeXyNL4CpeuuYOW7MLHk1Z4N
         Il/WoQJDsKlk8rx1yrV/e0brR3X0eGB1VoeZYkyw3ykRlTNDrJkNLEujej8xmYvDBoEL
         /pfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="sbFs3/9L";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si678684qkg.3.2020.12.05.15.19.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Dec 2020 15:19:03 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a9d:be1:: with SMTP id 88mr8458633oth.210.1607210341377;
 Sat, 05 Dec 2020 15:19:01 -0800 (PST)
MIME-Version: 1.0
References: <20201203222641.964234-1-arnd@kernel.org> <20201204175745.1cd433f7@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201204175745.1cd433f7@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Sun, 6 Dec 2020 00:18:44 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3TuKAC60HAjiyHwy7ciQp=mCNKjmG5jcaCFWe8ysVCuA@mail.gmail.com>
Message-ID: <CAK8P3a3TuKAC60HAjiyHwy7ciQp=mCNKjmG5jcaCFWe8ysVCuA@mail.gmail.com>
Subject: Re: [PATCH] ch_ktls: fix build warning for ipv4-only config
To: Jakub Kicinski <kuba@kernel.org>
Cc: Ayush Sawal <ayush.sawal@chelsio.com>, Vinay Kumar Yadav <vinay.yadav@chelsio.com>, 
	Rohit Maheshwari <rohitm@chelsio.com>, "David S. Miller" <davem@davemloft.net>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	YueHaibing <yuehaibing@huawei.com>, Networking <netdev@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="sbFs3/9L";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Sat, Dec 5, 2020 at 2:57 AM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Thu,  3 Dec 2020 23:26:16 +0100 Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> >
> > When CONFIG_IPV6 is disabled, clang complains that a variable
> > is uninitialized for non-IPv4 data:
> >
> > drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c:1046:6: error: variable 'cntrl1' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
> >         if (tx_info->ip_family == AF_INET) {
> >             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/chelsio/inline_crypto/ch_ktls/chcr_ktls.c:1059:2: note: uninitialized use occurs here
> >         cntrl1 |= T6_TXPKT_ETHHDR_LEN_V(maclen - ETH_HLEN) |
> >         ^~~~~~
> >
> > Replace the preprocessor conditional with the corresponding C version,
> > and make the ipv4 case unconditional in this configuration to improve
> > readability and avoid the warning.
> >
> > Fixes: 86716b51d14f ("ch_ktls: Update cheksum information")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> This is for evrey clang build or just W=1+? Would be annoying if clang
> produced this on every build with 5.10 (we need to decide fix vs -next).

The -Wsometimes-uninitialized is enabled unconditionally for clang,
but this only happens for IPv4-only configurations with IPv6 disabled,
so most real configurations should not observe it, but the fix should still
go into v5.10.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3TuKAC60HAjiyHwy7ciQp%3DmCNKjmG5jcaCFWe8ysVCuA%40mail.gmail.com.
