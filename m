Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6M2WL4AKGQE2ZUIYGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 1332221DCFD
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 18:36:11 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id fr7sf140884pjb.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 09:36:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594658169; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ae86Qs+9vvbiTK27KivPaQ/qJd5UR+5RQ3bH+VMmWzYCnIlMm6spWdfWYDN8upvid4
         8xX23/50PTJhkcgJTN3cykZbKg12Tpid0Z6jG99Zm8uYd5Ik7gkd7c/jjU3is4Vns3NH
         Ad/HRexjszb/3UZwU6/4keEPnDCcP6Ze2I9EgiRN00dQgPPQx9o/nwSfUS2gBtx9A8B7
         o7QLsZzebasv2EGrB7FbtdCTp4bTRKuPTjSRkfSMnwAFuVSzotGW6m8whFEyRVc6idZL
         kd7MsRm/mKGDwMiIPM8Uksp+wdjqklnGjZ41l3tRHPI9d8PFlbnDMUSmALXUj+7TKBwC
         jZlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=dKCteBJLDeUCuns+C6xG8R1uTOX4uAYlQnsYmp/5TNM=;
        b=Ssxpv9Prj3BQGAUtFjoZGQJO95YNCECWy9tFnHezNv7PZf74KrK4jkkTnpjNYovX2c
         YW3Zs30Z9th5tVIcM8G2SLwaB+JUsLvaZG1pBLZQgMyXCYk73FkRzWvYEp2lJPNlpVls
         bXZ+LDDFHKD9e0Rj/XZnLtQZCx2ndq2FV8HUix9Ye6fgPBaRYoLMazjZD+Mf5Ah7vxNx
         JSMU6YWpbYVspRywmZeAxT74kabOpBY6Ujr9w0OLWBRWmUxDziPgmdE8wsUAzVlz5POn
         3jufsOqOQTwZIBhD1BQtPH6lyz3lDNH+QGO15UdUYmZrmFetm5Rz66csXYrKnSmPeuA9
         DkGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c2ipyq6J;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=dKCteBJLDeUCuns+C6xG8R1uTOX4uAYlQnsYmp/5TNM=;
        b=RHIqhjNxmqXboqsAGlyhXonA9NhCsa5Ktn01jAYkK6yqicUcAoyI18dPu1P1Iv7p0y
         It8BbHf+H9FBwm97kAFouJal8Ky44QkIh/cTeXAvcz2hhJY4Y3ueXKVfVg/pUYrSyXsP
         qBHsMbFKmDA+YG0iLXf6hEJJM4esxIbLl+D6BYYar/fFbot055u3D0JBlzLRBKURCVK1
         8RpQuB2zR4s4RotaeR99Aak+udFGdy1FXj4sO4p5IVfl90PQFA2687AJDGCvabJV+DUp
         3gcx1dtVX4V4CeCf7ZufjVqghBlzn7pklbk+8sRFzt8Jotk2qMZZtmxRoJcaJGSb2Tbe
         YB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dKCteBJLDeUCuns+C6xG8R1uTOX4uAYlQnsYmp/5TNM=;
        b=VlFqdpjW6hINiJN+r88F7IzVlPSaEqWGbpiAOyHkAfbykKZfa4DOzYti4oMBxmWTPg
         FScy129SakHsK6cCtE9GgLtmzTnQQv0Zyania+WT/xsx+lETJeFgvR3eLf89wDJXoYDo
         sHgzkqZ8EG0ICZK5c0MDLhnpJoniRyvcDaVqCJoi9A2tSO1tx9+TQsbqDntpHQrx+59C
         OSngO1n+l5UiPFNSjM6iwjqls8j2kyT0MxwpXNjEj6nyVL8IaJbS8VuO8Bi11H0WRfYs
         tHQOBCz026vto1A1JgeLKvhOeNhxasoNO5XwnjPcw+JIhcHj7f8G4fo/z0J43hrSkP5V
         W/CA==
X-Gm-Message-State: AOAM531OdEc8XQHJ0qFD844PholWbZLcLGFrY3LhTp9MyHic0TziIwGi
	Vh6IowjEmyyDDp0DP5PzL88=
X-Google-Smtp-Source: ABdhPJw+/Ebud7tZ1fXkmGqrNcgqV7dIwWf1BhQBKnrhBEsvzUFeHoIp2w8dN/9/Jd/Gz2ysYqHlhg==
X-Received: by 2002:a17:902:a50d:: with SMTP id s13mr397356plq.149.1594658169620;
        Mon, 13 Jul 2020 09:36:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7757:: with SMTP id s84ls5573797pfc.9.gmail; Mon, 13 Jul
 2020 09:36:09 -0700 (PDT)
X-Received: by 2002:a05:6a00:1494:: with SMTP id v20mr663870pfu.150.1594658169232;
        Mon, 13 Jul 2020 09:36:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594658169; cv=none;
        d=google.com; s=arc-20160816;
        b=JD9b1fSgMDfHB5VCLWmZqw+wgk/kYNUs4FBvn3j66Nv/yyXrSB//TE+4sCTX7GDvcb
         lEodJk5oWYlf5RhM37JZoLwHLgZTUYN3Jz1PU5ZdJO5MUnoEkVk5nTInbkdvK/rf7AJw
         c6eSzM57TLKR26QXTJ4cGs44yPRzN0Yb8zgc//LKR2HE/1c6PpoR4C2IyBeQnqc5q9xe
         8fmNcm+cjktsqHgOVYbW2W+i360ghrdDgxu5dWp/aJb0wOmWnzLuWxipDSimWt4ACkEo
         fJgCdD81i0HSPvjp+FC8ybUNiOxfTJq2qpE2r7Y8298YU45dJ9B/CYAqewz9ULJOCWp9
         pB0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=jKFWuyCq6Q/wzWxx6RJ+qdGp/YoLkJnXJPBvCMqelxY=;
        b=dT8WtdzdMwZlDn0NMZ/aFxVDQ6RKrTn/HVozC9qjputeRQK62/Vn8rdMD2EZpcsXeK
         3oPOWqcy1KESSJBri+wYefVLX8NVnfYxpe8ydukYFcGsvXZ6SwxgEp2zmddwLeGf865O
         LeqLSI+l04qLsKdrZMFZ3Vd3KtqOyD0L2gKKCMEvilj7b0+OIYa357QMbe+gZcJmyjPR
         5v5ps19d4+3QHAY6t5bRtUhW5nOM56EmVg/WAnEeqQb9oVrYuA6sYQhJf24Qp+o6pEfk
         z3Yz4LFLfiQjy2FJwzSXMZ2BxpQIy4QWl58FDj1FkgzkcXh2Cj4CUUqNYSGoutACD7tE
         IHzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c2ipyq6J;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id g22si582436plq.1.2020.07.13.09.36.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 09:36:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id cm21so102802pjb.3
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 09:36:09 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr249169pjb.32.1594658168743;
 Mon, 13 Jul 2020 09:36:08 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Jul 2020 09:35:57 -0700
Message-ID: <CAKwvOd=QUw9dU9HQc0TBfBQEePsFaM_0tVxqqZnprDHsDfPgfw@mail.gmail.com>
Subject: Plumbers+kernel.org llvm binaries
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c2ipyq6J;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102b
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

Hi Arnd,
Were you planning on attending Linux plumbers conf this year?

I'm working on a proposal for an LLVM micro conf.  I think it would be
interesting to carve out time to talk more about kernel.org binaries.
In particular, I think Nathan's tc-build
(https://github.com/ClangBuiltLinux/tc-build) is in the best shape as
something that we could work on together.  The additional constraints
around static linking is something we could work on.

If we carved out time to discuss this idea more at plumbers, would you
be interested in attending?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DQUw9dU9HQc0TBfBQEePsFaM_0tVxqqZnprDHsDfPgfw%40mail.gmail.com.
