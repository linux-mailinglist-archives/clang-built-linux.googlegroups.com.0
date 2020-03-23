Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5OA4TZQKGQEQ4JQMSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7CF18FFBB
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 21:47:50 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id t26sf5412781ual.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 13:47:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584996469; cv=pass;
        d=google.com; s=arc-20160816;
        b=LOlzkSWtVJwglif/66j8MpCNsoQWdLijevS0zPi7JCKgKQMgHb/15xdPMc6bkhODZ6
         JurCxz2qNfB5nStuKzujlzg245D/cm4XBtM3glgH1IyKbovsPmkVsUyIA0joRFKF9tNV
         ruDvYbbMMpQ1TMCOpd/tIdMoqTHoosTr8Pf8wfMFICswrUFmDp9okc5+bTs/hIvcMs3Z
         dgFfxoQrW1iOE3+wJ0tCMZInzZO7sz6S24wbb5naOPge3BjHfvKvfRVDalpk/pKzp4Qe
         DPwUtTSRMUKe6tQpfvhKzg0NOlajqXbuznRb9wVLhZSad7ZMNoAjZDy3KAaVxNDqk4tr
         5vQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=yhQlbZUe06TapEj7LKRmX7hABWpwqk1Ph4AREPzxtcc=;
        b=NA/7VwV4WYI47jDUm9CNXo+Pieu5bnAyNfDnGUeeqEe2mjG7I/TGlLPYFzkT6VHkRw
         WYKYgwnYFWWovra8CGOI2puhgfWQhksRLBsFMzjgJ8dfZeUAVBVm2qyNivDJbtiA0bI2
         qLYXj1dMiDAZXcPCyIUNrPWEI0uMcBZegW8bNtYt26LCNST8xsW9fBnc08ivhlddZKSq
         f8LfEkeCTNI6PydHA76eEh2UPVYg8ZDGAUxwKtXKAVXKedgdaEaFcIhEVD8gb7m18Td4
         04CMg6SOpxeDuQguGLZop6s/jDBabLvI/a580H4pKm1v0SbGNdrnFOACQ5ofSTveORbH
         pixw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GUrqJtI1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=yhQlbZUe06TapEj7LKRmX7hABWpwqk1Ph4AREPzxtcc=;
        b=P4I8PrsHr15P3V7s49x2r4ptlJRv7caNpUNnUyWDbXOD7aX6xaHkx/nnFqAilrhT0E
         PHIr/WW06qzimVFb65f9AqFA/qVce7ChOjmONuo4Bfz8cDHXEeQXO+MKZKJdYfPlxNL4
         ihD61/pouoE25rVEI/kSMVGkNYQp4G4fhGw2hzQMbOvaWojXa1Q/1srR+cQRogQcf52q
         ngQyFNRFKfOW6/gVMFISFVGwYcD6iTkJJnWV5w4cqiLgvga9ycUMRu3S2Kx6BTXSDU48
         LlD5EcJS+1yZar8/zvTc1XmIW3d8aMhJRdDlF+aERO+jP8ZWgZfpxQt6/QIt9+B2DSt6
         ccBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yhQlbZUe06TapEj7LKRmX7hABWpwqk1Ph4AREPzxtcc=;
        b=Mc9D1zxgPjmKHrDrX+U0qQ0NEzGImfn3hOmIXf1pC9vJJVZyJ0qaU84hhda4Hl3FRH
         Wp9xVLWdBa4gmAYGWGulg6z3v9r3Ksj9Oyj9Id6Lxqq0tveseAlatEL2Kfbym5eV38O1
         B0U87PRyBNL93j5FlIZGeyCRylGO7N6XnBc1g0VOn0UiGv8LlVp31uwHTJLc+6We/3h6
         3n8JOYj/HwP8GlHZcqrNEtyKdUSHhJ7QrYCsQaAFSXwqCTOo1B7zcynKKRtbO8n/CZdw
         8YOMqq5YD7bfd/ZIIht0y49rYyeu3i7FGH1NWFY3Menm/ch6I9L3DPeAbeCvZfjM0+5F
         hVgg==
X-Gm-Message-State: ANhLgQ04MyOyJ2vTlvv7Jg28PGgisGrt/IimA8TonKbDfgQr3l7EXw6f
	QYl7ssygXz/gjACPSTdKY+w=
X-Google-Smtp-Source: ADFU+vv0tyqBd7vpvBaXN7K8kz96mSf25RUPlRgGCQ2iUI73F2BZoufSI8u5lPGGeO+HfBahFoNTfg==
X-Received: by 2002:a67:fb48:: with SMTP id e8mr16207878vsr.191.1584996469524;
        Mon, 23 Mar 2020 13:47:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ab51:: with SMTP id u78ls211481vke.8.gmail; Mon, 23 Mar
 2020 13:47:49 -0700 (PDT)
X-Received: by 2002:a1f:c944:: with SMTP id z65mr16027551vkf.82.1584996469185;
        Mon, 23 Mar 2020 13:47:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584996469; cv=none;
        d=google.com; s=arc-20160816;
        b=QyTZBB7cxjTk/QNEKg0ocqiuRqc+CXLyOCqyOASmKPmJZpAZLdQm7N6DeA43Jx9Y+z
         D1YiLNaoANf4f2oEeiEBq6VGO7FpxM1ZEyGil5AcVpOkqDt/B8dKKUsNbeUlW8RmnMH+
         jdZc3HB+qdQcSzlHCdqhlQ+d1KJB4lVvqUw9euaHTWCktUZATkZKyGaq9wpE4lG3no36
         +IEtmOf7qls4JQddTneDWJKtTZccogA6c4+o/TfhPz0jhEPoGnkk9KorAPUWN4YucdOI
         2rmHurbv6Bi9hfnl63Y+ezJUyofb7GSFngmOcs74HU2c59t5LgNKXt5G3K9knINEzKuR
         9N+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=NrIB1ebt1/ur23Ha9afXiMVzjAx8bniB4ZlX2k1MSdA=;
        b=xFIt43nlgikUhxvnnXXVPWw6m8Is3rGN6jBOenLRGPrEbUfL5P2JoZbXY7r+N0zJCj
         /Hlx+SQCCmKk5aCGvFEK/RDNhXLGWCkssCUHr8P24QgyXqoZWlozfqqd1mRGaYEajBzS
         0oQ/NLqY9xfvYmxDVMPdf7B5ydZyF0Nr75Gx8zYjBlgzZAhn3L3VmFKForFKjolCRK27
         Tz9GOMzYf5lu6QFgp3wMGGBmIfpzwbKP4YbIOF3QjApsuWRnRQx5jAMNf0E1IIEGVjHN
         yA3rG6YMsutwASQw9H4kTL3lNkLRXKTKb9Dkb3CyBNK60O5SevrHBd1bbTt+/SXeBZda
         43IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GUrqJtI1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id 205si933998vkw.2.2020.03.23.13.47.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 13:47:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id m1so6435952pll.6
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 13:47:49 -0700 (PDT)
X-Received: by 2002:a17:90b:230d:: with SMTP id mt13mr1322442pjb.164.1584996468549;
 Mon, 23 Mar 2020 13:47:48 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 23 Mar 2020 13:47:37 -0700
Message-ID: <CAKwvOdkK2tnWWHPy5HdZDsX=pzmAuM2Zffmqijz1Q9u6jpbcgw@mail.gmail.com>
Subject: min bintutils upgrading from 2.21 to 2.23
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GUrqJtI1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62f
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

https://lore.kernel.org/lkml/20200323204454.GA2611336@zx2c4.com/T/#u

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkK2tnWWHPy5HdZDsX%3DpzmAuM2Zffmqijz1Q9u6jpbcgw%40mail.gmail.com.
