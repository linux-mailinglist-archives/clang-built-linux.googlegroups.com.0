Return-Path: <clang-built-linux+bncBDRZHGH43YJRBCWU5P2AKGQEXSBRENA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7111AEC3A
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 13:52:43 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id j16sf2508891wrw.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 04:52:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587210762; cv=pass;
        d=google.com; s=arc-20160816;
        b=gtdtje7cuUVGEk52LSzdTi3lQvc68AaJ3lEuZEVLONSucLJquzxaegHzo5g1FzzDVN
         pamipdTQ6VuLgeSGh+l5IfTV3pZo3da9KzHy9AzL8+BlMxtWr22JB5lBqxYY+GbkVCBK
         I5OIdzUVUQFjChv0vJ/PkbnCuXElGOs4aen6H8h8jcu6vl/+m8My1J3J+XykGwSimL12
         JxrrxxLiYa2VM279yitvWXvYqzephdpAU8LatObSsSRAe+eoPMT9vR+3VlRZAqUgtRy7
         ISbFkBZ6sBRwVPrJJzUBJW5uXa+z7wbmyaK3Tf3IhH7dL5Xy8rwldxosCvjDOBgTwl3x
         SQCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9NLxP+SOt7yT8kY2UDfMVSeDNL9aVoCRyV7dYZk2QPc=;
        b=AxjluxQchZtwhk8fSXbbhvWHnpNf8XrEN5bB6VmoZWqfreBu20aRN4sWTY7MWV3nUa
         wlIoiPq/6Krg2tJbtKFGmHsVJue8YClzCarMsh+TYDtbIBeC+KssjlGeLgl+0obDiRup
         YxsJ1uz8jZVpV38ZauDTdf6Lj7iQ/47TPLYWHK49NWpQsltHpVrOJJWxL0ftZuRwb7sN
         gtu1gWAQN5M4DeY8effPHYUUirMWtITxAuJsstJfQoZ5vqFJygyVycCksxEKjhrx93S6
         UIdCF2dIYqKyUFHWCQQ1QlmnfHSmeeio5b+pm9+vFHSkhjgwrPXnZuc24FJpe3UuYEbw
         n1OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZH3Cus2;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9NLxP+SOt7yT8kY2UDfMVSeDNL9aVoCRyV7dYZk2QPc=;
        b=ULVck+jSh5UryqfYIMaT1li/REbnqZPnDS1CaFcnsYvNG8esm4LmNxIXnoVzlzrynX
         nxlofZJcka0SCJzD0JqUkUzlo6v7ccHg0kKB8LFEwnsmpDSpq+kazIHDxnKv31ZWvpQo
         lSfYWkDfDAuj+D+hLEpduN+cSXV9FK1o/hi58d6WcxDfoLY1PbVWtkJspuMYjkMmxQi3
         BwySN4RGs5CWiwZX9XdPGHGrsdVBZIo8bmh06Vp0ZYEpR+PA++6jIn4+idsTOMzujXd/
         pO0r7ePSdvmNWS0RwUWZEr9nBvHdJONGg9COru5x7yjPC39gACQdZu9t0ob6XbYKQFEt
         c6UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9NLxP+SOt7yT8kY2UDfMVSeDNL9aVoCRyV7dYZk2QPc=;
        b=g+Z8PUf9yqR9T8TuBRlS+1E46U6LTWLWXhZ3mDulIT7xFXG4PGGrcUuH4PsdBzs/D3
         BAhhw14CdRh9/EaIgPxATW8CyvEdcuth6L0o+a++JZHW+SQvcEtj+ltFwOS3VWgK4s0K
         T0k3t/fwWDON+GLskukGrSaq33fRMIHfQC6uoL/EBNy2dLmsP+cB9MpRAlyFu3yXUZv4
         wG3BxrhE8tn5CXkajz4n39jGgA8Z++vy3axWAhbRRjGKfqlI5t4sGXFutDUrIN1oWEKZ
         FwUC+9Bqizbd48d9qJSw4a7a6A/ZrUob4LZFIxwseyItUq+AVwXSCw4hnNtZzlgPvKA+
         BM/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9NLxP+SOt7yT8kY2UDfMVSeDNL9aVoCRyV7dYZk2QPc=;
        b=uRf1g9Md8zvdZSYxKjzHHSi58G0cdbaL6r0ZKNd8uP4sAdzQ8hTIin0y6RguzUv63W
         lakfiX8mAjqnLQ1y6tNhMaKNCnMo5QWXDalOXzgQW8K4jZJORQXq36oZ66/9QFnhuVkI
         WvhLztKwFRtm/Qab9j25pd6pd06L508dJ7ba9gge4wmi71wEAjd0jsUG52CTMgTzZ4Lp
         ngTjPDM51hfO6CbOHdOeFMbvET2+lYxEGD2gnf0Ng2vxGfl5h3g2lvdbe73vUd1SIowf
         llEthUOi8ewU8LCB3jx1bSYW0strnT9DE+3SephA+5k6pyE0PMVwNKIy7HC5OELPWegg
         6a6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZOfaT6CyBGQKE6h0wjRekp2QoVCxyMp/YZQTwzOXMTMjQu8DCY
	L2V4CtRcNlggd2BrCQ39q3Y=
X-Google-Smtp-Source: APiQypJyWbISbf7KnEy6yNP//Prwh/ocoEW0qa3nRHTLJOjT6zGpk7RLJxLZnnYiVcp0eLW0dHs8yA==
X-Received: by 2002:a1c:3c54:: with SMTP id j81mr7691657wma.140.1587210762798;
        Sat, 18 Apr 2020 04:52:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls4874877wrt.11.gmail; Sat, 18
 Apr 2020 04:52:42 -0700 (PDT)
X-Received: by 2002:adf:f750:: with SMTP id z16mr9277586wrp.115.1587210762029;
        Sat, 18 Apr 2020 04:52:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587210762; cv=none;
        d=google.com; s=arc-20160816;
        b=mxW2kkP/CKXwR0QOaOINVHPGmpc2yunXqboK2USzL2Y/NcrYr65A/wSS/gxQX7YlP8
         tPzMt4vQtu3NxGu+3JBjkp3kKwgFpILIzgW+M1yJQaTpF6DXX5+9ivt/UOypS4h8WegY
         X9U6V3k7qv5arCOpwUHKiSpy2LgkLBV0ke6fdzFoGLpKDbD5O0aRc/9XXnyuhUIoJhuF
         jONmv6e3ZYZOcjwLRp2hm7RLoYKvTQJa15eVixMIXca5loMgMc50LVwy4egL7oKOYRhQ
         N1syL2u8AlqSSdVh8MXZUtSsjBWFb1kLQv+SKOf2NUMdP8XKb1yxfaKlJENKES32TGvx
         d4xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7eUmf+WAv2BLj9CEZReyNvDx/uAPXOhPuyN7gz7wHH0=;
        b=sy64eP+EP4Obov7mBwWZYbclDpD0DhLM5NeLnq8b7lLP37gRYk+AV9STHyfEW9xQk8
         0Fz3G3/IpcH3LPHJIcnl40HOYnPG0r7jWd1KD+WcVlJWldfTt0w2qGJlRKXH7lAFt4nq
         Ix5lZYQDZ6NboqxAZM8T+fHJaMrbU/O31XopQgEwQJaaFV4cN2EM5nJeSR8J0RX+iVpM
         7L/Ncx2kd6DwBvo+A4A1bxdNrNfDKkIr+h7qdwqmWvjVc67VbhDjw9ZqEbkMmB/wDljQ
         /qUo9DxWN1lRva7FVG/E6iLXQEbYGuE/iIStTHv9Up1rEbeCN4t/ByttZhbxo5AidiML
         SzwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZH3Cus2;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id 71si65653wmb.1.2020.04.18.04.52.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Apr 2020 04:52:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id m8so4758849lji.1
        for <clang-built-linux@googlegroups.com>; Sat, 18 Apr 2020 04:52:42 -0700 (PDT)
X-Received: by 2002:a2e:a584:: with SMTP id m4mr4704366ljp.194.1587210761489;
 Sat, 18 Apr 2020 04:52:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200409001352.225135-1-irogers@google.com>
In-Reply-To: <20200409001352.225135-1-irogers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 18 Apr 2020 13:52:30 +0200
Message-ID: <CANiq72mPwDD4UWP4bWzasMiiU2Y3khQLEeGsDHPQsaLs=hbCvw@mail.gmail.com>
Subject: Re: [PATCH] clang-format: don't indent namespaces
To: Ian Rogers <irogers@google.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CZH3Cus2;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Ian,

On Thu, Apr 9, 2020 at 2:13 AM Ian Rogers <irogers@google.com> wrote:
>
> This change doesn't affect existing code. Inner namespace indentation
> can lead to a lot of indentation in the case of anonymous namespaces and
> the like, impeding readability. Of the clang-format builtin styles
> LLVM, Google, Chromium and Mozilla use None while WebKit uses Inner.
>
> Signed-off-by: Ian Rogers <irogers@google.com>

Picking it up for -rc2/3.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72mPwDD4UWP4bWzasMiiU2Y3khQLEeGsDHPQsaLs%3DhbCvw%40mail.gmail.com.
