Return-Path: <clang-built-linux+bncBCMIZB7QWENRB2FN2XYAKGQER7B5BDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3F4133A08
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Jan 2020 05:13:30 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id 38sf1043467otv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jan 2020 20:13:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578456809; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fec+JRChvxTdPXQGrZz8d/MV55lcbEBSDCcFXSNIcrCJJPOHu6obJ5ffMoL6/6eHU5
         waH06nhLbKz5q9pIuKE8lBtvtGQ2xEAwVStwHf60dclvvEizQ3qHm6QypUIsk0f3ik32
         qHwjeIl1Gxoo6pTL4nAxCgAGeZxXHFSOauSOVBwkbPbLLuU8Bmrtm2EnBxv9Yw3PG+nP
         omjVteKu1VxDf1sXNAde4RmpuDnHNuUGjfKjkSjGc5AV9IGEiqTlQm2PuTSQ3pu/ymv+
         kUwGcShnqkkZsGAtSL4EPDNm5CUFnUc9yMBwClG62+yKgiZ/H+NbpK66JYeMzQgBzTL9
         6h6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=EzpGJVaM+RAUeFt6rbom/C+nlUY66aVEuC9Gs/jBQ1g=;
        b=OaCxaJPR7YVm5ECBW3EJhFrHsNJLKtUVjdWp5l/NsttJTsnt+CV3GDbsY6Alo2hWrR
         YqTEH7qNmtNEPBB1Hcbybj9jExbtUEbcbxQRot48rqw2HJk/Q409QFcwGrBZzuDNufJS
         CHSnwi9srUrk/pepLhTx0yFtFfvRsZinKrCBEu3F9qJt32K9YQcQk00R/Ucgbv5IQ+XG
         daBT9ZkmlApAEbapNGa8jOW89QT8vpN4D83CKN9qG9HJcb5MiV+k//ByJghAh2QnTMD1
         Q6joAEwsk8YFeUNSC6FF71YLUVN3sDEKlJklBe1qzrrnh+0EI4EexlXzrK5LGBMIhCxY
         jgYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MSOmpz/o";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EzpGJVaM+RAUeFt6rbom/C+nlUY66aVEuC9Gs/jBQ1g=;
        b=PWGZD3XyIsZzkFJNVdg4MHB0SQ0BiT18CAW8eapXhu/FH2QFPvDXE/dev8Ifya8i+I
         saqarkGmwKwjC5+9CxSfPs2QWjSuJOhcZ5imrKbWlhwop0maCSqiMY4Gw6aG37h6qYhQ
         JKByDFPqou9oLGGMtdaNbOz5FFXzZP75mysd/ZL9tNtXgmReRsYD4zf/rBZB1f8uRUxx
         av9Pp4yFZBML2WBNmtWvVyDJl4BgXvJkhY+vV6FT/5Hex0xgHX9tC/fex/w78SGp1KC4
         MEpuhRzuva3hUN2GfXXHxJXfLSqxOAUA/lwl34h8L0m+jGnCH5yN0gdg1Szo1U0/JOeQ
         Q91Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EzpGJVaM+RAUeFt6rbom/C+nlUY66aVEuC9Gs/jBQ1g=;
        b=R/YlU3SA57qSwN0B55f72ZyO5P2lNLXU8tYZRN/OpAvOrm3woz7c3Qx6bbru6D2SpB
         tdqIR+s/fr0p97W6SB8DEcFi9YW88x8Xp+O5bHCZrIuOUyIeu1zrAkBRlhBD8vW7TrwW
         fRggktK2XoNm/Jmb4qP3iKdMlO7NHGb29/s6E0a7I743f+jmasBzYlKAzwjxHeCCyZYj
         BKuly12XWzSi0oqo1bQP/OzPZ8M2HvjcXsHgTbUjRtzEuG+BXKKzcBvNVPtZ4/i7aQzI
         LZ9a2coQfZtDFrHyfRj1KrfimIzB3bi9/dwqGJOArj3uh2j8TPPiieLuLaVmh79jN/qB
         1llQ==
X-Gm-Message-State: APjAAAXPBNYFSbHzz0QaS9XAYd6NJHWmIxE8As6QaBECKgKm/UzQX5HM
	BlZUS0Tmdlvvj2112Jvxx8Y=
X-Google-Smtp-Source: APXvYqzrxoZGOAFb6f4SxxZM6Z/76w0inQ58QBMurx2mGif9O0eCVDf5vRw0BA2ZJaQGQ8JPO79Qxw==
X-Received: by 2002:aca:f555:: with SMTP id t82mr1595068oih.103.1578456808812;
        Tue, 07 Jan 2020 20:13:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f515:: with SMTP id t21ls316036oih.0.gmail; Tue, 07 Jan
 2020 20:13:28 -0800 (PST)
X-Received: by 2002:aca:d6c8:: with SMTP id n191mr1624555oig.103.1578456808436;
        Tue, 07 Jan 2020 20:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578456808; cv=none;
        d=google.com; s=arc-20160816;
        b=uHGT2fAkOZ5HXblBKZMdGohz9DOmo8TMpvpGP7oe18SyzD15RUtQHZ7CToGVtLqpfg
         kJSrDzI5UVp5fbh0ANFFfVC30VPwSKQZcgvUT3UZUORweWq1AYH69H7s8RPEsNZprYWU
         YHemNfWGyGBSphAFRHfnLvz7ZQTLJ2lZpET42/xv2fRUdvj5yPUNaFkEZZFVbweYn5Rw
         eJ1OS6EJpUt+QkUp1KVaq6/2/SEdXWL2D6M5y02QUBQbKmJEVquNCa6hv3+9cmU0YGQo
         ePGlGOQn7V9HF0/qCnNa3dwOwFieVNYJTpbKo6EBmUr4eW21SIIUrat1dCl1ncoTYQwx
         t9Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=0dG+wGLeHDq7NgUmGd767wVMwjoXgIXZBobmzgYFXQs=;
        b=gT2loo8iAkIyPSYwSNO+5lRgtujBy1Du4Yv0EyTwgxLun+pPmQm+LHJwH13vLD+Bum
         0kCABTkmJdSI+mDyicJimWcZ9ARHShFtugOPHjoWhT5FQkOnrBChAQ1t5TIZvjHN+UdO
         YvgP/0pvettK37GCNXjx2B6lxJSc+t/IA3/O5BUxl0NfG4gVNE8dvaUvf3oRzTXnPxxT
         rXjDybnxSHNdWWAMBHUt2PzF/gfouRxj6/JlhdWxLkFT2LGcvpv8kUv1sL10iYGJ8Tu5
         /ydMeK9MtNMjWyBc61Gw4zWma8UG5RvNzXHvnm74RkzGU0E9PWRxS3MILnnw8tPLAHnF
         6Lkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MSOmpz/o";
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com. [2607:f8b0:4864:20::72c])
        by gmr-mx.google.com with ESMTPS id h11si142808otk.0.2020.01.07.20.13.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2020 20:13:28 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::72c as permitted sender) client-ip=2607:f8b0:4864:20::72c;
Received: by mail-qk1-x72c.google.com with SMTP id c17so1523234qkg.7
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jan 2020 20:13:28 -0800 (PST)
X-Received: by 2002:ae9:eb48:: with SMTP id b69mr2495533qkg.43.1578456807456;
 Tue, 07 Jan 2020 20:13:27 -0800 (PST)
MIME-Version: 1.0
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 8 Jan 2020 05:13:15 +0100
Message-ID: <CACT4Y+aTkvKk2BN8A1r3gUN=mpxEH6DgFzW15_KAbpGbOCdeWg@mail.gmail.com>
Subject: FYI: Benchmarks Of GCC vs. Clang Built Kernels
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="MSOmpz/o";       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::72c
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

Ringing In 2020 By Clang'ing The Linux 5.5 Kernel - Benchmarks Of GCC
vs. Clang Built Kernels
https://www.phoronix.com/scan.php?page=article&item=linux-55-clang

Significant number of benchmarks is actually faster with clang.
Though, combined geomean is _slightly_ worse for clang.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BaTkvKk2BN8A1r3gUN%3DmpxEH6DgFzW15_KAbpGbOCdeWg%40mail.gmail.com.
