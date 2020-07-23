Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2HT474AKGQEWRGWJ7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FA122B843
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 22:58:18 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id f25sf4918868ioh.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 13:58:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595537897; cv=pass;
        d=google.com; s=arc-20160816;
        b=KHaPWmh3mAYwS3+kekJG3c06Z4fUTysagvaGZaYcUSd4MU3w0lav9pAUZHP9zpwiZb
         rIQnW5XqPvNVCDiTMWoi/iPLtLnHGEfNSKcn9/flijs9U9M2LrvSgIwVSs0y8idX/zXF
         8h0bdlGT1p+ArxS/ILAPXQK+wRg+JmvvKdiS4z6GQ7AEoAKp+16oEDTUhhzaU4VejA95
         +2pfk7C5KfSfJUh2JCEZ4LvsECAGl9CdeWgjQL66H+dv45sraZzyfnzQhe1GJEVz2QEA
         +3n1cCSWe364iN2s5zHM/a/k+kZivMHvf7AH6kETttCrWVShpt6rbaiArpgXdmgmqe20
         k23A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=67T9ezAxOkOmTpe6Ai7tAJH0kz8wNGM4xCO/DVdZ8pg=;
        b=nAG2bzjoLBcw/QKN01qpvC8wwy4GpFPQsY3ajqeqPovqffI7n5LYkxXIxtLEQCY8ru
         7tBL/WXcg8v8zMCSypQKFyL4z9ERu81Xk/gTEcEDkO5SQJLeamqb5Xbv17uduFxhb2yu
         4ot//5qgGz8KVYN4hqb6GicpGz5KjXCY3J/vm2b9sYVj+0UdsyOEv3caYedbH4HL76n3
         mzWAIaYLrcEW/CSVMQMfDf3DdjBf66UDnzwEXprSrPf0DqPz2zdULrDbffGacDgzGbmf
         /xKegQFIH89YNW9+jJbTS/nfbHurzdHxAlUomT9o1kuEYSiWYWispMQE1xNws3R12B4j
         AQ4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FH9HqSCG;
       spf=pass (google.com: domain of 35_kzxwwkaeirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=35_kZXwwKAEIrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=67T9ezAxOkOmTpe6Ai7tAJH0kz8wNGM4xCO/DVdZ8pg=;
        b=eAA27WVvjTMftyMB/7pqW6OR5VdRm9Up38++82tR9ubvghJrQ70lBrFSkOaib/Hxll
         RAlKsSlARvF2K/Zlix0HDTZS5vHkuIBsfiiNyOMhoxtJeW3f0vx8BYOJowdE45RzSBQm
         F5HsJ3LV5OmyaxgklXrdm9Rv9VLFRvb4it5EVL1wOoqoEIXhFigxGBNALD9B1kGQqAdl
         VZEaZApp9VzhIS14KcXcxsApSSKDouzlsbOcMZRCFfmsUwm11amfojakh6/7wqV/i4x1
         2xiry1vd08CXvhuu5eDrpbzEdkmI4a2W05LgX0T9fQUXCouTSU6U6TDWDzKCcj+n1O4s
         wqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=67T9ezAxOkOmTpe6Ai7tAJH0kz8wNGM4xCO/DVdZ8pg=;
        b=GJpVGfkXbu15WzZSHglK4tr4+i52JEEpdscixtZRRE2GeXtHXqCw+7nX3DdBcazilu
         ++lramxLJhJyUjOGoQCPTpCbyNzW07AmAjy0l56ppgBN3mydiUBo+7JdVKclyvII0rHH
         lDYj8Gf9iJDNK6cx8cZ9KvwLOOP4+Z8VkYsgBqxMYNNN83wwoMXbWaGPVP2e67x3I4a/
         EfZjKMjYmy3A3PyZ7vR1VQTlllT+01NAWbHodtTGNoYTflMtlG2LXHBOlu5zd9MTgwiN
         TFGSfkazewztTI/tG7dqMcagM08+uAHuuattAsEGrlspKgMOaYpzU56ol5xUW4k0lMTT
         p6ow==
X-Gm-Message-State: AOAM530PyCy+/nOreuhdJz4bp7TgR/6LiU6tPnWKBL49Z9nYmhBnUWmR
	Z/Hbrfojyr8cNkds46UmsEQ=
X-Google-Smtp-Source: ABdhPJwxe3LwDMBUsAowggE8VCvVhbtmRowPUnpJBlPXo58RPDyJ/LlEpyg63xAtUFhZiecTQEoKjA==
X-Received: by 2002:a92:b6d4:: with SMTP id m81mr193807ill.72.1595537896827;
        Thu, 23 Jul 2020 13:58:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:15c6:: with SMTP id 189ls1280639iov.8.gmail; Thu, 23 Jul
 2020 13:58:16 -0700 (PDT)
X-Received: by 2002:a6b:5a04:: with SMTP id o4mr4022535iob.171.1595537896346;
        Thu, 23 Jul 2020 13:58:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595537896; cv=none;
        d=google.com; s=arc-20160816;
        b=L2N1DYFpx1xCPaVlCuCcyhWsO7qxzFf9VQjXtOb2DhH0gc9q2zuMbAwht81SfptRTu
         PSxRrpuXdMIfekpbivTpUY/ToEDMDn8NGTGUY/ltmHAXDd5risFEkboPIp7hQtayslXc
         iE9BCQeqgxc5eq7CNB4IaXg9q4LSqvwsg+UDq+jOG+bvXUbKFidRTAhLdr+H9CLjdmG7
         tJFqKoXgX20kqckiWoKFjfASKUCwAXIMiLV/IvGUEJYHBE7/bMtZDdEWHBGR29EBfwzJ
         vUveI1B1Sow8WxK4kBLUunuqKvtqCjx9p5LGszHQFr8PiDBl25KDI+T1dpc8U2K+X3cq
         3DKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=7FtAxHooqgZ8bYbSQNU2/0E4qw3ahA+xHDnMOW5hjTM=;
        b=qVQ+aL8QeCjYjG6jUMpu6UADgU+H1QtRFdyDsVr5/nQJkdU6TpTmkSjmnDs7/4Ccje
         bIUTtTDEWZTp0fmHEziqBGN30Cdi/ZkiAnGKhuPLOply9MUlX2Wk5IygsMYHHz73QQ/U
         P1Xeg5K83H3PVHu9teJgwCeloDJKx1Xp1q4EXZ/L+DdOCrXVpfhBDbqmK5iSOSPp67Ss
         kicQTOnYguEh88G1KLTdXKmYgArCW6OhfUi2U5zJ2a7AfZzDsZP11Sje8NY3s7RtJ+mM
         8H+5zlEmmI4YHw3xU47oiWZR4f03tjKv9xAxiviDU95w/iUdDkeg2uGoyXYLfI07num0
         czFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FH9HqSCG;
       spf=pass (google.com: domain of 35_kzxwwkaeirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=35_kZXwwKAEIrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id e20si212100iow.4.2020.07.23.13.58.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jul 2020 13:58:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35_kzxwwkaeirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id u189so7797819ybg.17
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jul 2020 13:58:16 -0700 (PDT)
X-Received: by 2002:a25:b68d:: with SMTP id s13mr10666339ybj.330.1595537895811;
 Thu, 23 Jul 2020 13:58:15 -0700 (PDT)
Date: Thu, 23 Jul 2020 13:58:11 -0700
Message-Id: <20200723205811.1104520-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH 0/2] tracepoint bugfix and cleanup
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FH9HqSCG;       spf=pass
 (google.com: domain of 35_kzxwwkaeirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=35_kZXwwKAEIrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

The first patch fixes a reported bug in iterating the
tracing/printk_formats sysfs node, and is tagged for stable.

The second patch is a small cleanup and is less important than the
first.

Nick Desaulniers (2):
  tracepoint: mark __tracepoint_string's __used
  tracepoint: used attribute definitions from compiler_attributes.h

 include/linux/tracepoint.h | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200723205811.1104520-1-ndesaulniers%40google.com.
