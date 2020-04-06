Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7WAVX2AKGQEKDGJI2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1741C19FAEB
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 19:01:51 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id e3sf640462ybq.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 10:01:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586192510; cv=pass;
        d=google.com; s=arc-20160816;
        b=dTpclUei8rk0hQ50P7tRzepnvbEUwrvdkLM39Tdo3FUtXgLEpdNPfZRmo5+e57MkqQ
         ehcEHYZKneslh9RoquRJFziltZ25J63Pc3XtcIR24zJsi0/2iRuZlwBgZaq+N7rwxVWx
         wKfICJx8xYwDMHVdcX/cwOMbGGsbN5Vkkihj6pWB1pHoMaSWJ6r+Wm3he5MkgMFxLNSL
         bxqFkpPdE9HbjD2Vt0kDjya79+WS1irq6XQDAThUmxLXDVbysQEyTerxPVIdBmQtVe19
         b5OgZ4GpK1tn6P4ZUWwUlC3yQvMUgj3r2l1I2pE92AjKmJvM5IJQ4CYGznqnaZNQwNI7
         TAqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=Ili5dyE9XRelxQ379FEIA1MB2FQXZQuUSv2JeBb4nNE=;
        b=GlFTwalik8NBqFQET8vZCLr2iVG/vx4mWAHXqI8SNYo1ImMSWk21YnGnYPIbANh0V/
         WaXvAMDcmCiG9JC6bOTIuhiPMfR2SbWnk7S1JlNc1HfkVwYLtFpAElOvZ5Uf+YD3EDpY
         IEcaA1BTP1DOcQHSILUCw22zPoqH8ILRvCRfibHsztLJn1CPZ5d5hAS+i2kDBDfwc3NU
         1MAatp6kJ5kX3763+Shwj7CSYtr40r9EHTjXVj4ERyAaiAd6nX7fBFY9d2zC+HW7fPyu
         gGa+bEpmxQ14JrQ2G2YB/vISK6OO05UPXnIy0WSmZ6TY+mPVy/cO455BaY5Y5t315T8Q
         G53Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KE680g6P;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ili5dyE9XRelxQ379FEIA1MB2FQXZQuUSv2JeBb4nNE=;
        b=IH2TINFKw/FRAK7P4ek2iktsK7613UchJ3lDOBgc/5IZCZoZBlTJjIA4pSvfl2JxW8
         BcTEfeMLGcUjCHUzz7lxWfsmKe/mUcHsFj0ZyZRZAAwISjhC2faF8x6Q2+5pbhEPbkvt
         EWFZ0NbDgRPTz3IWksntgAQldbRXLKu3diebNdp7vfXMkQEZC5+qDnNYwGF3QecRIBtx
         PlqZ2/7u8AqeTE/Fp08BozHYk0hlVdB4NgMi8avhXc4WrzWkSpbNmmvPQFrHTZqCz6SN
         Ga3DEme5thhsdSibzt9odbW1gqL6VnnTHpNlUQlPMlPCv3xHhUm8n4QtX/IFVJGWM2aa
         PpyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ili5dyE9XRelxQ379FEIA1MB2FQXZQuUSv2JeBb4nNE=;
        b=ce2mmQ9wkQwKEgQTESOvGaa6LJ5x+jBQE7NLzdDAh2mJd8RPrO1L2PNZFIZxMaWbHv
         puhzAVaFdcEv33YahKBn5nK3aIeFQTLLSeQxXQNh4ZOEAqgIxoI3rczw6CISuOwoNI6v
         WDcp4T3Ruof2eq2tPZx7BTdbUNxkje76tp9gtGaSPn2rl2U9zWqFsKQeis87eGenbMWL
         8ssqz10CaygIatSt3FR9saFtfScbx445B9wxdIVYUbJ7T0kOpOXQCMee/JoFZ/M2tMJB
         6wYCCrC1bX2VAo1IEra1qblKn+Atb4KmP78/ouGOXid2hztNR7+4E+Q5rmu61TldAhqy
         JiIA==
X-Gm-Message-State: AGi0PuaRn7NPRE8oKdQ1xsyuBADkItl8TCpakiDjXrQxxFASa0aEjWZF
	UOShBaGURbfVdt566cXDFfQ=
X-Google-Smtp-Source: APiQypJoozGcv3/71YGejsRxT78j1dbUXUlhALWP8/nuoAiYen/sMl2q9DZl8UPFRIgTsir+991hJw==
X-Received: by 2002:a25:4102:: with SMTP id o2mr35025928yba.235.1586192510144;
        Mon, 06 Apr 2020 10:01:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ac26:: with SMTP id w38ls36154ybi.11.gmail; Mon, 06 Apr
 2020 10:01:49 -0700 (PDT)
X-Received: by 2002:a25:d9c1:: with SMTP id q184mr38972489ybg.349.1586192509747;
        Mon, 06 Apr 2020 10:01:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586192509; cv=none;
        d=google.com; s=arc-20160816;
        b=YtKggMvUWJaIm9QLdDpmPhxVRSvfWd2XK3VQkFhNhzqlOqMjphcjnJTlMT4EfXGR4T
         IjzZbrCcFaiBog4mWtxU+BsGRx10MUUSHaZbQYF4iUS9ZIq6Pzosz3mI27kIKbV65MC5
         jxG81L7qo5AP84pXIKCAZO7l/llfvIQTqLndVhRY5shI5wfk1kX6awN6D0GbXZcIc85z
         Pn+DC+v0Y56Mf7SE9r+kQqqM8Et+UEXN53gYfbzjgtOUJze5Poa4MoNTveTMhWZjEwmu
         sI7UwA8vXpXt5Ottgc/dD++WvEe0/hbwGN5kl7RgF24Vh+87hbYzJSPEJ+AuX0yB8xrZ
         JQQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=xQklxw/ygij/YK6rKHcksRQkIyLenikULPMou/Dnkzw=;
        b=PBWvgx0QkpfrH0uC8dG9kaTjVlJZOZ0L+gseqIQvT4cWto5FwD5njFE8UTqN08yIDN
         F7z2qrvs+zypwA0S3Guetykw1HlVa7oh+KK/4e6pqEbZYv8SqB0uVx49GTNc0UnqtQLO
         EsmvZwQBl8kgZhxsd5/iD9Z1xGUfflyq1OHtWqLePqhQ8Qdcv3SarSIWJ9qNZkbzRMwU
         sKDnDNh441hhegDQZCYkyL0xGhpjJatqq5hOWc8+mHQ//p2JDnzYy92vMOMobfdNBFg+
         H8erqZiDkUv5FLnk+SSjLfb3fXblBvXbXNakQbeOujy6X/FZaVFwM5Fe8JudoZ1U6Sg4
         +k/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KE680g6P;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id s10si44840ybk.0.2020.04.06.10.01.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 10:01:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id g2so42609plo.3
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 10:01:49 -0700 (PDT)
X-Received: by 2002:a17:90b:3783:: with SMTP id mz3mr134268pjb.27.1586192508945;
 Mon, 06 Apr 2020 10:01:48 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Apr 2020 10:01:38 -0700
Message-ID: <CAKwvOdkenhUMJB5dMo2HxxR+-fTs2h1udQfLj0UJy2Lm2rrp8A@mail.gmail.com>
Subject: asm goto blog post
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KE680g6P;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

https://nickdesaulniers.github.io/blog/2020/04/06/off-by-two/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkenhUMJB5dMo2HxxR%2B-fTs2h1udQfLj0UJy2Lm2rrp8A%40mail.gmail.com.
