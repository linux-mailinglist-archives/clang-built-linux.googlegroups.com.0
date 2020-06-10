Return-Path: <clang-built-linux+bncBDRZHGH43YJRB3UEQT3QKGQEDU43XMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 682E01F5866
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 17:55:26 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id v24sf596707wmh.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 08:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591804526; cv=pass;
        d=google.com; s=arc-20160816;
        b=l3pGmyEDotjvS7Zb+/iq6WEOiKAADBLd3FF8raakZB98wibAgJJSwAfcFw8G25Jhl4
         UuDRYkjnmF381npbCPKU0NWJWMj00YRcsOMp9YZuwUvYtv2uul/0BT1pqvuWoH+jyKDP
         PWkFoR5a19CR8ZNtXPMtgx9HIaoqPkfLRgCo3GjmSOrsJZsKtkeHEkpo/QbjKGPEdl1a
         No2nAV8YOvOq1wSXLcaXVvA4LkeHvK80v4XFymvXgrGhLELBby/Mnxe9fhj99F2NGShl
         2yNfkgrDl0RbmGs2H/LbQDkdPnjVNyjpNNuu4KN4WdMWt4GdhAKvMx+YMqf6Vyu/4LWD
         eYOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6fnOxPHJNKxyij7fiiyYBNuHDQFjyloTj0wG1H+A8Os=;
        b=TcIJfFO8fgVWH+ZrL1Fym/l+NTyKLcBhw9DAdF678cbpzvg/fL7jASkO1EXRv9B4uC
         beXYXYPsnpLCBQXbrRUdotwGiGAxo6ipTTh2CHZME2Hi04p+09rQIUv1Q1yXfXQz2xbW
         PJqG3bWkxY/jHrOt9zwOwAiKdGRbF3bAvK0XtJ16sg8yHLwGrTA7dM7ixFf9DYaDnYY5
         ZUU9CIXO7cq8JlhF5rTrOiA9102u8W//hCs90ZmgBB1eYi5vrsTcurcy30OapPrgT09+
         56egxvATUnl7AuKVhW0b74M2BTV33/Av00XkMRb0pwxGywPqQVd/ZCowyb1HJo/tcF37
         h96g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KwMtaEzF;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6fnOxPHJNKxyij7fiiyYBNuHDQFjyloTj0wG1H+A8Os=;
        b=e8dftJbUEs2fEPFDqTEU1yw/BaV5smmjyDzqq6CCb+kYhvASg1/2+PAiZNdcTbJWrQ
         5HBNN0WwWKO0twJv21P3y7yLdmTx0eE6ATLfh0wPjWSPmjrTvIpnjNiLZDzllgxkKttk
         SucZENvQE1sweqAyzT/BuYLawGBgTYXobALzhGM347HN3TAbSRwvsvVpP1WZqSlx/8De
         sFUSSrY5jOJ/uYbzVUBdtpsgtYwa+qk6VzkwaD+YN3Ss7KiLojFpKHW+WT94eFvRbj2m
         huFwlDQY25G5+3cligSWTmexjhhqou7NGXqkkV1qV/8N/Xrm+IdocMHC96jZyG66z51h
         KmxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6fnOxPHJNKxyij7fiiyYBNuHDQFjyloTj0wG1H+A8Os=;
        b=SjoooMur62g65T2+h0+pxUTspDjNUdRB/B6fqIZHUgiIRo7Ir2+/LZs/lRKVO/V0ws
         aPKNyTMO7rNmojCxxwELD/FfGnhSQn7CyMiNJ6jGbtQ8yqS09vLigOfGRYWcd4a9RlIS
         GNM0trTpHfP8XQqDCNjwgcA+LBTmYDbZ5FaEnrwusRnYs0Vw0OIG5CIimZxif0W967Mf
         1KGSbd0NDdlhOvIkor1nvyADKaWGTe8P6nGhcYoCAGNno9Pyetkq53UCOuaGW5XHrcqC
         I2kBhf9dviAJ3+4J3ZnC2O8cvix8TK/ZrnT73TW43w5D9GRjc1yBt+nCcstGs7QLyHN+
         iaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6fnOxPHJNKxyij7fiiyYBNuHDQFjyloTj0wG1H+A8Os=;
        b=NdqnsHs0HhIB+6Fr4TLsNnRKWztgGjsqKvvKmyZsNHpDrPkAC7NX8HLvT2wM6mzKpr
         CitTrFZgBNZDW4/+AitiUFMG+HCUNhSnJfL+RX/1Jai71OdXMioA87leSjodVoWlV9+t
         Y6OM7o1REK+zt9U0l5s6GVbX8k0BwyYYcO7wvCmnM1g3Cq24Ldh5X/j50OUJbXio4mOe
         pJks4paxvsRnAsHxNDZMDMOgjiOjNWv1/OS17xfD/lfnRyStnmUL9LJTiEvdLRkfqbR5
         R20L6+vJyZ+RSKlqUNQQlUeB2DsiKdAOmCH6hAcNuEuHo0u+GOwWc3iBCR6DT8JzcdfQ
         w1pQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530P6SPiOtSbNdp79VdAOAXTXgHDyfS210//62RL+Jju/gZqmz/o
	vL6DOy0u+2J/QSTW51SEgJI=
X-Google-Smtp-Source: ABdhPJywCbocq6OJ8thwRhp8pjBg6MQnted4dPvpMA+ACD9iR1naUbi849bANipfJhgZ4Y/VZQPecA==
X-Received: by 2002:a5d:4042:: with SMTP id w2mr4642745wrp.423.1591804526161;
        Wed, 10 Jun 2020 08:55:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db45:: with SMTP id f5ls244567wrj.0.gmail; Wed, 10 Jun
 2020 08:55:25 -0700 (PDT)
X-Received: by 2002:adf:91c2:: with SMTP id 60mr4732425wri.41.1591804525620;
        Wed, 10 Jun 2020 08:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591804525; cv=none;
        d=google.com; s=arc-20160816;
        b=K235HWUAIrcKOnaFsz6X7F76vGXRc5K6RG0LfNCidYpuOnW10C9j0g6U47bOnuaxsw
         VUz5VcVxaTW3bcy+BoPqp46Msl7t8qfwuavbsa8FCQ/NAq+0AubxuHo8DaMqqsaxpULX
         4GATWMo0fEsA/EhkamrH1towMu5YZ+frX8BJmGjNvNinOhXG3GcA/O0uvj5gnWvLdQdu
         WvPaoGQwjyuP1HniJxif1l35Yj5OjCwI7C0ZFRK1BZLFJOED9rkjsY0DrlwsKc/Vp2Ia
         h2XyxEvv0FM0Td/bCcigNNPANn6T88ZUk+NT+LZ2Q56Jjzkqugt1cejCkgwElliyE7oq
         jWMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SEUPY1uSL4EEx5wS5at/fsramWYDqy3CI3YeN8vkC9s=;
        b=LmXEndms9JW3djS/s6OlYNo/WaADFHMS+U863amwXPtI0J7BP/JBEIHXFPZH/zuHgk
         JE5GCl2jJc8cEdvU1D8kFPR/cqFJ5TFw8CfcjBfu/IWIvhqxSdNTVgm3nVJkAvMKD/lk
         Hyyg+eWYeCaHl/LOlTaqwr5ioxTfqQ6MQij6U52kirt+/byufh1D/XLl8Q4P55pwWfDX
         PXsMuB9BGqSUTJqW1VHDzZg6muSTXFelyb6yBXqttynkWKhlvKXlp7ZmMfXC8BPAH6CN
         1c/GyNYWkNJz8UG+TxRYNls3Q372TUuaBcfGZbU/hjJBO7kgc0Zh3AYfBsz4CwWcqvQ8
         Ld1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KwMtaEzF;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id s137si6972wme.2.2020.06.10.08.55.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 08:55:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id x18so3140902lji.1
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 08:55:25 -0700 (PDT)
X-Received: by 2002:a2e:1558:: with SMTP id 24mr2120753ljv.202.1591804525341;
 Wed, 10 Jun 2020 08:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
In-Reply-To: <20200610125147.2782142-1-christian.brauner@ubuntu.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 10 Jun 2020 17:55:14 +0200
Message-ID: <CANiq72m_p2BRXswCGhUZi-Nta2y0uNXDQLRjPUFydB7YGV-6HQ@mail.gmail.com>
Subject: Re: [PATCH] .clang-format: update column limit
To: Christian Brauner <christian.brauner@ubuntu.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KwMtaEzF;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Christian,

On Wed, Jun 10, 2020 at 2:51 PM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> The provided clang-format file wraps at 80 chars. If no one minds, I'd like
> to adjust this limit to 100 similar to what checkpatch (cf. [1]) uses now.

Thanks! Picking this up with a few changes to the commit message.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m_p2BRXswCGhUZi-Nta2y0uNXDQLRjPUFydB7YGV-6HQ%40mail.gmail.com.
