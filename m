Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB7MOZDUQKGQECB2LQOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 410CC6EA84
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 20:10:07 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id s21sf16230212plr.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 11:10:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563559806; cv=pass;
        d=google.com; s=arc-20160816;
        b=UpvhXui9TbI0HNEkdvmN7jIlqZAQ7t1OooDNJYH2b1WYdzNDBhsTuKlCumm+PliX2D
         f9AB0GwdgbFJFeFtxL5DkGgYrMgx1E1q/NsR52gDC2oRjKQg6mw8MxKflrzk7uCKOJ0f
         JY7d5GxUAGRZhZCj3GE/DLFDFTuG+/YAra9dTJXXM0hfBvRBZrTIfRa8O1WHIb1G0fJO
         SnGw219TCSJTiNZEymgntORDbzLI86Zq/F6VfphlZp3xunmCMDTlm1ppEHrMsgNiSuOM
         7hVy5TENZtBh/IR61zC2l2oZ/bkqIFzUN4wHIheImFXKg1waXfHbjzxNbuJ/zUzb7HvO
         rjuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=/WIV9lB3TP/cYV5nhkbX6coQ7JawFkXdNQnppbKh7D8=;
        b=fULXJkdO1pk03tO16tr8qhZhKfH1x4dLJ5YFxFrZZjjAVfbQNEeVs6bxXx6O+CNkB4
         rki2MZU3y3Qa3vXLTvntwLdzgaEpjoNh/APi09VFr6E30rjgV3qgOrFrDDCOM5HCkXF9
         kfqhts2gYl1Rm/nR7eBYFC5Lj0F+nZDZ0TdWuB75xU6YfB9arzn0SQ32spFr03htO/fF
         lD4Aw8iBuyXrWHkqrMYNR1eYstoavcZ30ZpaQ3i7RkOkjiPxkMu+n50/cyDp2qLptgOX
         JMkxSsU3xLKShy25IGU9ortKK2wxVbYEE2sa6/0VUvnmICuUZ2GZadpRazk6tBCINGQ8
         iBSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/WIV9lB3TP/cYV5nhkbX6coQ7JawFkXdNQnppbKh7D8=;
        b=C2DTO68lDg0cqBdMW2llP5hspVEHUJe+mbOBeqeRbS7ck4/nX9/f1rnbqvhMdPV9tS
         tSIG0Zur6GOk6qnc4DGCZ60BDIRomu8G0uWvtIYWAdfScF4Mk03LKTOP3KzEHjnAVEil
         14cqfhPVIdHahVbgUJ0CR2yH8l8VogtyNqETlllt5C0UNd5LkOXPzch8qKP/lwxnVn7j
         E81RfKUqlJd4wOWznslW+4GtAmx9e1S8Zpxtoot91uhDNLowhcR6Xn7OBoN8zYyZ/jmy
         9Iamc/dR9pqLxe0HaWh8vkKCbGwImRAryooYWC7h2Sn2Mq7EQp9RW8vbluT2Oyu7cmgj
         csyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/WIV9lB3TP/cYV5nhkbX6coQ7JawFkXdNQnppbKh7D8=;
        b=W8KqCvBuwkDIP6rJn9Wqd3C/Z+t2ciEcLfnNOl7m/BtF+qcwZfgfcy/AxhtV+uhQvX
         48eVAiQDaEd0ldkwCBbt0crxa05vDr4AnbxwyzN2V/GWCd/SDUmZ0lZJP6nrRRUzk3N1
         tFN9YhlbeC7gLV6Pj+Fa//7YZtaej0QqvfrtoPOMkB1ZjLrUXkda0HGkKUANW6ZEwjcy
         KYPb0EG0Ra5le22jKuxa1t9JoFi5lbZaCeI0d0ZpbGZkdtiomSqCpillx0qZ0CWTSqTI
         5dpcI2EK8MoGSN8HarZucnTXyk33+WasP/QoShJu8xICPlO6c8wPrBxeir9Qto3e8MNS
         CJWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXoO1RFnALrzybTu2NCU0fnyRR3HopkXu0rpx1R1Nod7z42jhl9
	zUNxs2B9xooDTNVsW4q9hlg=
X-Google-Smtp-Source: APXvYqyAcRyNqWNhmZSebgHv5RwdNgT6qpWxLNKeJTVeLKYqck/J4Yx4ZzT6n24ur59ycL3nSZuY4Q==
X-Received: by 2002:a17:90a:2305:: with SMTP id f5mr62298802pje.128.1563559806012;
        Fri, 19 Jul 2019 11:10:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e444:: with SMTP id i4ls5352718pgk.13.gmail; Fri, 19 Jul
 2019 11:10:05 -0700 (PDT)
X-Received: by 2002:a63:2252:: with SMTP id t18mr55672905pgm.5.1563559805535;
        Fri, 19 Jul 2019 11:10:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563559805; cv=none;
        d=google.com; s=arc-20160816;
        b=XckE2hsbHp3+7kZMt/ZlvlpNmqgMJxlS979njMT66gdy1si68KTTmDQpauqfTN8K2o
         +H806qvXZxZdk8pDNgezKpU2n+Zw37kAA1e3yhdqEKRPmL7ZuCsyMFhz1Te/lehAU8NO
         wWLTZGg74syfzvODreYA9xe9y1jNdW2xxrL2WJhh42XeDeJyFca8NevyCbiFvaM0TjwS
         X4XjMy9Yy2dK7watDp9m2XiqNIjg/g6KaXTe5FK9ZdEMAhUkwUPARhjANdYL9UWZBFgP
         EIIX8HkQaqcQBtpgZ6V94NkdIrAROP3MZhrW3CT/W+mw8j526UI0yzzN+U+gHw/5EZO7
         XTQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version;
        bh=I5yxDLBjD9O283UM+JdJ4IKPKIJoZcBeFuKThne91Js=;
        b=Qv2Rx+tfiAKCfIxAx6a1p8w2+5ly2gFpiNmljOW9b5yXj6BnfsXvIFx2erdcD9mhPU
         ghXGp+n9O82vFPOXELpLwv7QREATErfaszxHyoHmnDejLvIMJS59U8lqgvwPtlvSVjaj
         0VDcNL8ZK76Q2gO6BEZ14JGw6uKYwLdHgJLIBoCdWci8X1uaaTub6h2M+3Z4jx8WQOfO
         D0s9o2YPTnjMLWl6iaCvrF5B2ljUK1HIFYIbpmsZGh/d5e7fpqe2v4GGz7g6dCWvad8Z
         Shc8r5gqGXEnoRmm2h7dS3OGwQgXax6PMhTPA8LVly5gofjKgqmPuapqpNR8bGvP6JNO
         rxFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com. [209.85.222.195])
        by gmr-mx.google.com with ESMTPS id ck6si1006253plb.4.2019.07.19.11.10.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jul 2019 11:10:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as permitted sender) client-ip=209.85.222.195;
Received: by mail-qk1-f195.google.com with SMTP id m14so23824414qka.10
        for <clang-built-linux@googlegroups.com>; Fri, 19 Jul 2019 11:10:05 -0700 (PDT)
X-Received: by 2002:a05:620a:b:: with SMTP id j11mr2187297qki.352.1563559804402;
 Fri, 19 Jul 2019 11:10:04 -0700 (PDT)
MIME-Version: 1.0
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 19 Jul 2019 20:09:47 +0200
Message-ID: <CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA@mail.gmail.com>
Subject: warning: objtool: fn1 uses BP as a scratch register
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.222.195 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

A lot of objtool fixes showed up in linux-next, so I looked at some
remaining ones.
This one comes a lot up in some configurations

https://godbolt.org/z/ZZLVD-

struct ov7670_win_size {
  int width;
  int height;
};
struct ov7670_devtype {
  struct ov7670_win_size *win_sizes;
  unsigned n_win_sizes;
};
struct ov7670_info {
  int min_width;
  int min_height;
  struct ov7670_devtype devtype;
} a;
int b;
int fn1() {
  struct ov7670_info c = a;
  int i = 0;
  for (; i < c.devtype.n_win_sizes; i++) {
    struct ov7670_win_size d = c.devtype.win_sizes[i];
    if (c.min_width && d.width < d.height < c.min_height)
      if (b)
        return 0;
  }
  return 2;
}

$ clang-8 -O2 -fno-omit-frame-pointer -fno-strict-overflow -c ov7670.i
$ objtool check  --no-unreachable --uaccess ov7670.o
ov7670.o: warning: objtool: fn1 uses BP as a scratch register

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a12cVdrEXdgWkHGHP6O04mz5khaB7WgQ1nvOptaUTu_SA%40mail.gmail.com.
