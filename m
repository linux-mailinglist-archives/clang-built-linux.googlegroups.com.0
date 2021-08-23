Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBWVIR6EQMGQEWHQJYIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C313F4EE4
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 19:01:16 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id y8-20020a0568301d8800b0051b222a05a6sf4942883oti.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 10:01:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629738075; cv=pass;
        d=google.com; s=arc-20160816;
        b=WYKPnvcsVcGeUdmkfr4ZmfwuiRaJway1/dMwYWM3B7evP/Q7SLlXGlDZREJXmYwn0m
         Fged6hE8CVmufHsBHl9W8TVxr5lCJqCmYyQuU9JGs7aT+PzWa4HfOgW5Ikdihd0sQty2
         +bjfelolfLMENTjsL81F7G4UfYMU5cGY6jsjSFoYvMGeFj/IQPPeib82SrgDnFbjquFJ
         z2cuZ7REaNPxTv2/DE9RMOAjB+cg/Rui85mzajtaFd8fCYMLj3vl1S+pNogufxYjhe9t
         8zw+4naZ8oEl5Cg59GBUn/BM8JtjFv6QTpnSd3PJQVWMDXb5uqiMmLUj30Tdsoas2Z2r
         DpyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=lBU6nOPKDWaCMYGEjGjGiJeXbUCqzjsb7JsM8BWeCqk=;
        b=kEWTkOFLDkycj+V+ckOnvOVtafRL2OKH8ivZU6a/ZFYhQWXMcXujJg6NRyHJ6uEea5
         RQVjZpyUEPrTYZayM0snqCOWldmo3BlNWQMQEcoutNOL84kxJhHjLCOG4UWIvo2AuggK
         wxwcDTCdkhaWCAuxUbQdR2pMpXt0Nyq5KPr2DpzdYg3Xs05W6oPHcABaXV7MVkdZDrUX
         F0IpXCkPrOOjT2jIHH7nhkuf+r8XXbeI/lyUYT9+q3lZXhaq1s87JRFfLmPCflkSj0z8
         oXydDrh3kYNxCth4ZYQVAjamByeCYaKtR2n5p+R9D9ciLPG+D5PkWgND6takuBFIFYwK
         qUHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GNvXr/kl";
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lBU6nOPKDWaCMYGEjGjGiJeXbUCqzjsb7JsM8BWeCqk=;
        b=CHm40ZO/BY3/Szz+AKovrjhoOQeSRyys+XyX/7DjsZ6xT6JTKkGD/CXluLNK7z/ZIX
         qq6winuCm8C9O5H+f2W0TQ7FD2x/Qh5CPZNKnNbw4vNAGF3feBbyk2TiW4gOqUZfQYB0
         JejsHuzrieWXAq5oGS2Nx166i8HW4WimJ5WHzmB92YJuPW/eaT9ojpKklnrYXCmohubw
         RAUyNOyUgGH9XwYVXPfXEzSBPNXU435Hh3O+FZMKCJCSRw/2VDX/jfJsTG4KUoTu6rg5
         O5nydifE9SliS3529IaIjMbwBCAZf0E7b27E5dzQANnIuvf/7xbngfxEZaNMmkF3zqC1
         tEhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lBU6nOPKDWaCMYGEjGjGiJeXbUCqzjsb7JsM8BWeCqk=;
        b=r4pko5ACXLl/8H8+a6W0vXm4cR58IU6TVESP7mjf/KleRjILinTndj18PeRprh7iF2
         r0eXJeALUJhfgDL9q7Blb8i03z3fX7UA/9HhLiSnUIF6oz2zjfimbAPaAw244ee4gQTM
         dsS80q3kdZSd6kD16js7hkl8C+dLw5PgssHioc+5hg/IOPyqgDQ/bV3F6p60LWcR5XDo
         wlonWYB7VjUfZQXj+AOryY3gZgbnrhDWTrXWVgtgYM01l699GNasVZ9W8kEp9T6LTP21
         py2x015AQwmiBfmtjkH7UjGPLJi7YFyUhUUvpaBGsVXDLgTu6sxyL3ZOFst7vRVKZxdV
         eApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lBU6nOPKDWaCMYGEjGjGiJeXbUCqzjsb7JsM8BWeCqk=;
        b=pvL4OmcLM+rtFVo4LZnecp1lEEVAeiqotbyUTIa+FAjR1eRNfBRS+5tlRgcYSM/779
         PIXvFgmuuM0Prz1rJOPcysmBuGN/f75R/qK4/dcDuRhXnHd9U67liXmkjywLm6iwA184
         bkniZ8Yg9r8dwwq2aMPAwS2tIQTAuDNFbSZduH8rnvM+wmmiLQTExcJlvQAPTj5Pj5cP
         v9eO/9vMzgwMOKxJHk01KDZmU0IxyIkGLpzJF91durX9suJTW0n9IWWLSly8e5YMMYb5
         MJR2CotyrGIMtlPW5N7VzMMDcMkqfgJ5yR4w7u7NaWDrel7wrU8qGCdz4IVpaDUyN4rH
         Aa4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53369uLsVyi118/bE6sIQWqZ4h0+hulh3yePDHca76Ngi6DP6sqj
	n9w62wbDKTHEvndblF7wsKY=
X-Google-Smtp-Source: ABdhPJzCndCjZro9dhXLwZXHtXRyiy15+hCDu3ejxyTCxwj9jzi0o6U4M811MOe1D6qasPnfmPKuKQ==
X-Received: by 2002:a4a:1506:: with SMTP id 6mr2481323oon.93.1629738075005;
        Mon, 23 Aug 2021 10:01:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:a83:: with SMTP id q3ls2786167oij.9.gmail; Mon, 23
 Aug 2021 10:01:14 -0700 (PDT)
X-Received: by 2002:a05:6808:1520:: with SMTP id u32mr5521572oiw.105.1629738074593;
        Mon, 23 Aug 2021 10:01:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629738074; cv=none;
        d=google.com; s=arc-20160816;
        b=Lb7cmLWFrxrC17ht2mC9yJwxByEqIx8e/mwN9EVl95ErQbBELnCdZPzobDTzXJ5ERB
         UeDDxNx+M+4ts8zqx+qqN9otXnx3UDd9upQTLXYvTf6Bi8Z0S8PNcjsb7mLVOEQlN8WX
         4SN+rPFqjspJ/UO/HHZNYLiAPiuuudpQfWTCvYEfdYJXL5fTEiOKc3U0q9pHmjbp1ASR
         XN6NmOn2gHP4GhosEqaMJUiKPvAKNrKJSQSX/in+G8qLtU5UUFalB8EweCodP0mZPAOT
         vPf49PxwRJkdenr5C8OfSrwJ/qu+fxb+PU3q3CrlG1Xhb95OgfPqbn/jh5Flhws4oSzh
         PSWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=9dChikHVgwG7d/711i1s9qvxIpLptusWO5nO6BvhLUo=;
        b=Jld2FcjQ77xzmYmHt1uQ0sCix/Rrq30vzLDBySfQLMckMecJEg0eHl5ZoJh+ywnpCX
         LyJM3dK360D77rIyqXMt3WzRxjli+UtuR2B6K9MJLgNsraBvNCPdBiuaAtMFrJVpcVtk
         PdCFj0XGUWBPgs3p5OcQQmL5/0cRPccOqAoGomNQee+TESB2WCPzw0OSSc8+jWcGdDT8
         7dN/66tT7ygTbgNEH8jZCDxRe3U/34hiIYm73pJVxr5XScXxc7enxGVJk5NTGeV3NFmj
         3G7rGQeokisxjIYq/0hEJZH8n7CTkzaMlvxqRFNsKcnvhIAHpuu83B5LM/Aq0fjHK4dq
         dp+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="GNvXr/kl";
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id bf14si511965oib.0.2021.08.23.10.01.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Aug 2021 10:01:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id x140so1082349ybe.0
        for <clang-built-linux@googlegroups.com>; Mon, 23 Aug 2021 10:01:14 -0700 (PDT)
X-Received: by 2002:a25:505:: with SMTP id 5mr45360934ybf.157.1629738074248;
 Mon, 23 Aug 2021 10:01:14 -0700 (PDT)
MIME-Version: 1.0
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 23 Aug 2021 19:01:14 +0200
Message-ID: <CAKXUXMzdGdyQg9CXJ2AZStrBk3J10r5r=gyiAuU4WimnoQNyvA@mail.gmail.com>
Subject: Suspicious pattern for use of function xt_register_template()
To: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, 
	Florian Westphal <fw@strlen.de>, netfilter-devel@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Netdev <netdev@vger.kernel.org>, 
	coreteam@netfilter.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="GNvXr/kl";       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::b34
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Dear Florian, dear netfilter maintainers,

Commit fdacd57c79b ("netfilter: x_tables: never register tables by
default") on linux-next
introduces the function xt_register_template() and in all cases but
one, the calls to that function are followed by:

    if (ret < 0)
        return ret;

All these checks were also added with the commit above.

In the one case, for iptable_mangle_init() in
./net/ipv4/netfilter/iptable_mangle.c, this pattern was not followed.
This makes this ret assignment in this function a Dead Store and
hence, clang-analyzer warns about that.

Are we missing here an early return for a negative return value as
well, or is this case for iptable_mangle_init() in
./net/ipv4/netfilter/iptable_mangle.c special?


Best regards,

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMzdGdyQg9CXJ2AZStrBk3J10r5r%3DgyiAuU4WimnoQNyvA%40mail.gmail.com.
