Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXGLST5AKGQE6PQ3DYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id CA764251B5F
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 16:53:17 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id w19sf2634744otp.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 07:53:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598367196; cv=pass;
        d=google.com; s=arc-20160816;
        b=C5QUNFLe3rICU+YipPUnNuk0A1YRalDa7lJMwdRnBDuiwD0JnGlB37b5eyapQn3fTp
         eLwbzFthLnPAIHicYixqnlcEZ7Vfh3qT+o5ozfiaD9hNAAmKwjJ0sOibN0Nz/a0c7bxv
         zGs6D9RMRPjGpH5pUw1FnCCwwbYyttarPOJIKjl82dq/JOi5+iu9lEMvNp1C2xtdVzGs
         cqEiKlTzrnSS5Qv72NWCcFGzu0JOo/px4DjKKmOCa34WNihk/wQiEMXM22Vg8khzDxIO
         NGrLQy/+CXoUCG5NbEmE2MGC8pWM0PIX/BQUGA4HmEkgj0jY4DTTmjjSgZV/P06nz4hr
         BhlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=4ZjNxmkCsP3y6SGh6WiNiOhdgA4q7S9t3A+s0r10zo0=;
        b=DqX43eyBRQhmfZ7RjPMpAmaFhBU873X2lGBrNGSD4tciY8+i1eoesypiixzmLQfS6D
         bQnnKsJH6lV4EBBRvIlDfIQILF8LrT0I/hYYMQV6IyTYmvUFNjSgcQO35Hiau4zl6W5w
         rIboAEfSRybXaQPt96hFTXH1M2xIOC6z7VoJBnLkVI/ulqVnk6y4ZJU0vBX56gKWNs4v
         I87kVQzESdEOFMMdBIRE1GHmA1OyogA0yTmh9zemN57nmI1H/+iD7xmxJY7mBFmnfEeL
         1RQVmh0kq7/Rid/PxzvIe3+qMRNwf8eqjt8lkjuCFVrNkkyX3n51nzUqd80HxzuiqHSj
         hpVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rZtF2LAr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4ZjNxmkCsP3y6SGh6WiNiOhdgA4q7S9t3A+s0r10zo0=;
        b=IdYVRkGOGmIPZkXQioHWE/0tFLlBxtnDZkzRxX+FwtzwvKpUWBjs1tfWaZtyMly76t
         uQb/NFG40eAVlOP/XyhXuyj1hi/MnicuVmBVByXxS0n6fI70d41BtUiALdFJYj0ACqWv
         u+nVs3OW4XWje3b0LHrGJ9EEWG68xGgOQTuPXm4qeS7rrFnoY2SKX6T1VErz+A10J2MT
         79QQ9AQ8G1dFWks7mkhDZpm/pX/v/oSjZ9snoD1uEASXO0QG6uE4dIo/9ERSiQqtvX+X
         OfvXCTen8jDpekSZAhCLFVMRMu+yd0lU7QQm8NuFuDJIFmT17P2VNX4cbXFxVO5kA48D
         Ljaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4ZjNxmkCsP3y6SGh6WiNiOhdgA4q7S9t3A+s0r10zo0=;
        b=LRlIIvHA8iGZHLc93Rxci5LjF1zcOxsiqloYbihMtVS9G+R2A+RBCiZgGZ5+i3aEhw
         7y1lKTjtQU2aTFxmN+YAuqIhxOOHdVeVtDHlk15syJOfg6E05woY3of8LMaEXrVI1kUu
         GgkBeztxtQMZH8rm8i+j44r/bgQy60MH3lyBsDIQk2nSs4tF3m60dBBf/nbjffv9iq0C
         lNffsJaoo34PiXKgsC1eTbOeYOa6KPXIBh4zvDqBXvUrXMLlUb8fSQSV0ErmN2GHOiAh
         A+jwzBAHYySNBWrr4owe2zSVIbDwnqJjpQYk4ghSM7ccsRxBhrWwvYiEm5cO5AVfIHoU
         7WaA==
X-Gm-Message-State: AOAM530DnF2zcrH9EChJLT22jbuwu4S47RyKcmRQzpKQXHNpsLZoAm3+
	MLn3VNKwjnwfIG0J9uISo1c=
X-Google-Smtp-Source: ABdhPJw5tidN1wBWKM2xDn4jSGQp7sRu6pOCrptNtX8XYr3eW+Zki1L7g+CX/+knvKQLAImfqq0tAg==
X-Received: by 2002:a54:4187:: with SMTP id 7mr1237693oiy.127.1598367196780;
        Tue, 25 Aug 2020 07:53:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:bd8b:: with SMTP id n133ls1344588oif.1.gmail; Tue, 25
 Aug 2020 07:53:16 -0700 (PDT)
X-Received: by 2002:aca:550d:: with SMTP id j13mr1277717oib.58.1598367196529;
        Tue, 25 Aug 2020 07:53:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598367196; cv=none;
        d=google.com; s=arc-20160816;
        b=kMj3fryfBV6QQNba0s3vlttU3jrsYYHaQ77gy6NNXXdASmcPw8utdPzs5ddv0uhvpt
         Tuw6SIRHtJriFajqO7KkgNPO/8YWL/+fkYJm0Z5K7gpiaUe0CyfyYbSyUa5mZoukVKUC
         4jm9ec4ry5hNFQz88hSkfdmvicht8vuo5OuKZwxLJ3Nq3kGzk5/WXBISRfLxJEuMbrpy
         ci2U5KqgEJNco+NeUHXaxuQndtpsWfqP0tYiXtftCT5sZxKeNysOnxlmWzzGyb3EeGgT
         tOIOOjiud3qb+lqNkj8w1db+sAJ23VaeaNRr4xjkZI574pOvD+hbuwSmge6FbleR90kL
         tobA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=f+2zh3V1JhzhFYnLKa7qS27steEkVX9jSUaneEwtNoI=;
        b=L1oG6cmyfG7UX9AyT8i8IAo8j33wts7TZ/LuAAoDVhTxydmFFxaSwvoP3A1LtlTAmr
         UPi65i7PiU6EFAUB4SD5RVrCGmAJTNU1dlaJijnlUM1citYH2/0Ng5XU6SkN/WZWVKbd
         c7wx/awVp1XzgjHUiW1Z4EM7jyy2OS+kOxM08U6gmRpb+FC5XOd4i2cPaZSdfvKbWj68
         F/oqI7Zf4qi0frZ4wg6ZUwHPO6MZTI3scsqvwzeQRn1aLGZNuJSRReHtZwd1NHXXCNfo
         YTzUH/uVBKpazDUtNdYKPwD0nusxmi6FP1dDcVnOgP1UtZhbl9DYzMFrL7Wp6VEWWl5q
         HJKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rZtF2LAr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id d11si934032oti.2.2020.08.25.07.53.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 07:53:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id k18so7537433pfp.7
        for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 07:53:16 -0700 (PDT)
X-Received: by 2002:a63:e449:: with SMTP id i9mr6971690pgk.263.1598367195718;
 Tue, 25 Aug 2020 07:53:15 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Aug 2020 07:53:04 -0700
Message-ID: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
Subject: linux tooling mailing list
To: postmaster@vger.kernel.org
Cc: Peter Zijlstra <peterz@infradead.org>, Nick Clifton <nickc@redhat.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rZtF2LAr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::436
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

Hello Post Master,
During the Binutils BoF at Linux Plumbers Conf 2020, Peter had the
great idea to establish a toolchain agnostic mailing list for the
discussion of tooling related issues and requirements from kernel
developers so that we can list it from the MAINTAINERS file.

Would it be possible to setup:
linux-tooling@vger.kernel.org

(I'm open to bikeshedding about the list name, but "tools" should
probably be avoided:
https://www.urbandictionary.com/define.php?term=Tool)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkHzbPjw71n%2BRVXuM6Wt6PNO6fiy%2B14QTzthF7MCkewwg%40mail.gmail.com.
