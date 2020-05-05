Return-Path: <clang-built-linux+bncBCLI747UVAFRB24OY72QKGQENZFJDIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3628A1C6193
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 22:07:08 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id z18sf4000904ilp.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 13:07:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588709227; cv=pass;
        d=google.com; s=arc-20160816;
        b=w+sqvUjty5oAi56KtecQs4k8VSSNXS3jwJUQ/bABa2SWk6bbK1/qUNsmLK8dbtYWSp
         OR5A/1+8Gq52vAGkHkNmnn5Z0ejVHCZwxc0XDvSGnHslO9m+GiG+hfLvOwhIEBPlXNFj
         qHZxYOl8qCjcZtWIUM8d07vWazY13Qwvh5tJTP8Um0ljVXjN8quWLOwaVbBaeucFqQTr
         h8c++wTRcwtX4OWi77LgFKimseGrMPmirwvAsglVyhkGMMbWP74hN9USUmNYWuodfAal
         oShi43xY/asAlZY2tDCLuKx/p1I5NaNDxk0gUjuvMNWDX5LLjAz1go8IR4Kd0c4yW8vD
         dtkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1f3HqR5JaHsfLiXCZ5esW4STfyQoIEDhpIKLjhntiSI=;
        b=Ukul9AakY/SuYlTTmAvNcvrslfq3BRfUUW64wiuaDyPqPYB2kW2Tf5ZLtDIAIeAM+F
         uRK7jxO/AEMhovHzM42HcRlxS0naKBKZFm43TfSCVpfNoJcIBBToTlenVASlHcVvqv/P
         19rSiHKPLvR+zooPZMnYShEdanWsQd/4niyn/PTRleMn0FV13BXaj9Yid4JvAtAjSrf+
         TkZ4sLB6S5WH9oZquHiak1asBi6cB2LyuPJBXiqS1L/FeVkp3lGzVMdFOhso+DCAfJ8j
         Ee78HVmnI7aX7h6Ea2E2RygnfNtjlVrrwwCI6OXnTNN9J4jxnkmCZhCl5ZjDVKOA0vVH
         Rh/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=RIT+d+kY;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1f3HqR5JaHsfLiXCZ5esW4STfyQoIEDhpIKLjhntiSI=;
        b=LwC+nWJyCB+M5zbz4VkmqhRcgIKSSOEF/6HHETlqaSXB1jw/YAvBRD2r0nJPDuNo+f
         h+LUmLjnhdovsUbqg6xj6Xg11Yqd5ZQNwC7WaShuULu5IDYLdS4+Ij39kbJQDbK/Lcjb
         4XXfK7fo9QZzkXMK2FUVfWx1YYrlcdegaBIhC4QBeGYocXrth/cNUU/WNoMXXujMPsdE
         QKkOcvlkPmtl0X/UVANBbDw7ZVmb6kC1K8Uyp7kk/+s9sKbk3Ctc80rtRjs3Cj8ekoov
         gJPhbMSVInNuLheXFv67ro3/YzcBD/SKVBbFPNHZVqJtwBUMNCS2jNPJ6LtlO/z68ase
         ujsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1f3HqR5JaHsfLiXCZ5esW4STfyQoIEDhpIKLjhntiSI=;
        b=deXe0JIVAgavMYIat0eZ8mkF1DanbuJOmaJCDHI/GLTCFSmafUMg94W+Kddp1mo80L
         FgvYhAytURzC7OKnXt/4hz3wRGU33NdOzXLscsA8MlxuwmKGliEXLrTCgedSocFYNLCq
         EQzFQCwCBb0z7NpP2bLMlu1N0GrXCDhG+dtQrBWRZCKNlvseqx3MKMkkhgFylL70yFNF
         v2KaMuGdu/gvnKHgiOtlS3dIHgEKudER4oAvKws6vIUOGLDmh/8FpCPsl6DtHagUXBuv
         siOf7BjWEXr+zUmPSgGSBkqZu5XqcxMsuliC2bCG8APCW4wkxQ0EYTlQzjTeTOH8QhCA
         bXgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYKHrd/UaPYzYRxnDtAGUHT+Jp6Yu0WkENfyMcowAih/TlWInQd
	4wJgVh+alUJZBokSLlUnjeM=
X-Google-Smtp-Source: APiQypITw1j6AmF280opEbSmzFxmr/UGTeK2WUlei2kGgUe2OO/A3Bbo0Mxb6qoQrArn+dGKThqCjQ==
X-Received: by 2002:a92:5b42:: with SMTP id p63mr1727341ilb.112.1588709227173;
        Tue, 05 May 2020 13:07:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:3007:: with SMTP id q7ls863254jaq.4.gmail; Tue, 05 May
 2020 13:07:06 -0700 (PDT)
X-Received: by 2002:aa7:8118:: with SMTP id b24mr4724087pfi.321.1588709226668;
        Tue, 05 May 2020 13:07:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588709226; cv=none;
        d=google.com; s=arc-20160816;
        b=FB9Acw7Q/VwtPwUDDrpppZVgUKly4p0GThJG1dG4jGS4aeBgslbysUoFtH/cAKE5c3
         3MtBahtbFlh2U6u8dxTlme1br228T889DcXEn+xS6Q35sLdYvEbGNqFnX2O+TT9c16Vi
         lNpqIUcbeU+OMrZCJvwAXPB9Ge7p1CXN45KElDZmRNBtAG9gpeR9lX9S+h6WJEEto7yt
         qUEA+im8prVwyNEDqtOBrgp7ZbYAjIwrGYWJ/5YC8gdCfcPaQmJOc8jRDbx58wO4Cfcg
         Dj5t363n7ar66DVKEtXoxGckzeMlUYoVJrz+cLw9B0CCOzJM6Lfjk4chtjlCRC25R82U
         DvCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mhzC5b26/10DWlTedHgwrD0egt/y8/a+V6hvfEr4knM=;
        b=yBGxe8V7Px6hcO02C7dUgVf89eouc9w+38HHbRvLhgcdMxDMvsuLcLgJ/Dy9hWgHir
         ogFKL9vE8HArvDZc3lCIQ+Yu0ITz42GuPauqYLBgJmISsffKdb3+TUcfcvurejGVIC+Q
         2jgSWp6G/d+QuQNtdRrymZKRALgjznzi8HYXC+czfV3TOhxV2MNA9xJDs0To+1yIXKW9
         XE2HKjUlij/xlrVzjlXIkQu/48jXv6AtzCsPJYblNFObb9JMzrveqPmIPp/volwK+bVB
         +zD2aezZCk1Ntb5ZyVcAQuC9V5MRU6iJ9Um9pLDxNouFkjAex3ugpiDeM+uZJugELIzN
         e/LQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=RIT+d+kY;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id t141si196179pfc.5.2020.05.05.13.07.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 13:07:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 0d535073
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 19:54:30 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id e8b82927 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 19:54:30 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id e8so3511143ilm.7
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 13:07:04 -0700 (PDT)
X-Received: by 2002:a92:5c82:: with SMTP id d2mr5605707ilg.231.1588709223915;
 Tue, 05 May 2020 13:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141327.746184-1-arnd@arndb.de>
In-Reply-To: <20200505141327.746184-1-arnd@arndb.de>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 5 May 2020 14:06:52 -0600
X-Gmail-Original-Message-ID: <CAHmME9oTO7DiWCXoeCBjmPOBMoZQ2hUhHjZ4_oi-nVP_9pRpSg@mail.gmail.com>
Message-ID: <CAHmME9oTO7DiWCXoeCBjmPOBMoZQ2hUhHjZ4_oi-nVP_9pRpSg@mail.gmail.com>
Subject: Re: [PATCH] net: wireguard: avoid unused variable warning
To: Arnd Bergmann <arnd@arndb.de>
Cc: "David S. Miller" <davem@davemloft.net>, Greg KH <gregkh@linuxfoundation.org>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Netdev <netdev@vger.kernel.org>, WireGuard mailing list <wireguard@lists.zx2c4.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=RIT+d+kY;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Tue, May 5, 2020 at 8:13 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> clang points out a harmless use of uninitialized variables that
> get passed into a local function but are ignored there:
>
> In file included from drivers/net/wireguard/ratelimiter.c:223:
> drivers/net/wireguard/selftest/ratelimiter.c:173:34: error: variable 'skb6' is uninitialized when used here [-Werror,-Wuninitialized]
>                 ret = timings_test(skb4, hdr4, skb6, hdr6, &test_count);
>                                                ^~~~
> drivers/net/wireguard/selftest/ratelimiter.c:123:29: note: initialize the variable 'skb6' to silence this warning
>         struct sk_buff *skb4, *skb6;
>                                    ^
>                                     = NULL
> drivers/net/wireguard/selftest/ratelimiter.c:173:40: error: variable 'hdr6' is uninitialized when used here [-Werror,-Wuninitialized]
>                 ret = timings_test(skb4, hdr4, skb6, hdr6, &test_count);
>                                                      ^~~~
> drivers/net/wireguard/selftest/ratelimiter.c:125:22: note: initialize the variable 'hdr6' to silence this warning
>         struct ipv6hdr *hdr6;
>                             ^

Seems like the code is a bit easier to read and is more uniform
looking by just initializing those two variables to NULL, like the
warning suggests. If you don't mind, I'll queue something up in my
tree to this effect.

By the way, I'm having a bit of a hard time reproducing the warning
with either clang-10 or clang-9. Just for my own curiosity, would you
mind sending the .config that results in this?

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9oTO7DiWCXoeCBjmPOBMoZQ2hUhHjZ4_oi-nVP_9pRpSg%40mail.gmail.com.
