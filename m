Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5WKT3WQKGQEB7JFFCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE1EDA20A
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 01:19:20 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id x13sf384735ioa.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 16:19:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571267959; cv=pass;
        d=google.com; s=arc-20160816;
        b=KYeBh8K2E7b2e/F2GIz1MNX7iRYHNoGZcs1XjirGeyNpdO2Ej8UhzQwmeeo12G/Sf4
         JVSyYrUpdEykaGpUQ7dRi3H2y7H5Q6AoVKciejhGqVVx5jX+Lj/3AXV7I82tEsZ89YJL
         gaeqRsRwGR01tKUcpXrRtciGraFUs8c+DNU9Xjn0nn+PgSHXQfZgwTAAQ34YNwfCStW7
         YUVXuVDV1adZaF8EkvzRPXxmQBkLejT2Q6oBZomuWNL8X+xJVXowdqXymI7HwLePeLS0
         N4W556gNk8vCHCfWrteDSMxpn85dSGbHlpJU63Farj1PqtjipVXOv2qrGmasfVGYUumx
         T95A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=ujOXbYEw/799r1Zc5GS/Y5BPD1CohFaFg2MYNcK5fBA=;
        b=JIKrvXukUHC5TA0NZDW/Z/R8Sb9+ww1OHH2LiKzivCYWE9L1cfQ+KsIOhJ5kqPLuRY
         vqPzC5KjK7nIWYg462icgaYwYMcmFmPiqo8f8G7vJUw+fMmXORsWbnbdHjqJgOgjRlk8
         86OzEtcyB4xR8fhl/+e/Hg/S2oO7yC/JHyuxY+ylolcPgPzGCIdU2frsLYxZY8RDsfeq
         Xip6wmsc/BVBjDAJ3rkN6de4CLQLIitZRzCuFTTHkTE0Khh9YCjAW+czf0OG+GN0lGrr
         wSIoH+dl/Tmx6tot1gDP8CBPZ+/kGw/cPv1JYsDgd/lrZOQg8leDjdvyIwGB8I4whNrt
         zEvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ozMYZYt3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ujOXbYEw/799r1Zc5GS/Y5BPD1CohFaFg2MYNcK5fBA=;
        b=tnoBCVOBHmBbCDwIdgKMNBmMrKKF1svnynCvdrygPwYvKOMYY7QYjD+WR6SpcUXdKR
         6ZrYCeeY5JIkTnf+VjBe0od0w8gpjysaAMENQCbD9roU6mk28bIryaWvIGWITqJeS6Nl
         RDC4KpInaAwyvWFIi3RZS2AT0ktSgQ7uYy4Zuy7WtUWSB5Pm4yzePw8rQ2MhXyT0Q+t5
         Jyyd3FjnpcfBBRPACVK9AG9e2ovcZn/KR+Qgk1UYtxI5+VOhRkuU3KhmvG2cxWgdIIVH
         ib/Q+Nzs1q5EDuBghfYe2wI2bpQWqwNQaAXXMBxAd1mR7rOBqHmgUA0NKQabM4jgekOi
         4iMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ujOXbYEw/799r1Zc5GS/Y5BPD1CohFaFg2MYNcK5fBA=;
        b=gVvsXA427hIPgQy4JKOdVLgOtSMad/yOrVTuEyQ91B6JzVh4ccXTcTJuVQDDBQnDuw
         9kPOFqOpEighRagM1HCH1k8Tm3d3RHpkMsw1WVQfeiG8Q2FF5tZLZRcldEr0/LQyCrjI
         oD/L4jWtzD9JcASeVk+GJTusZ8v6IevIZj1bMpr166Y2kHiNoqboZIPMPo6BUhWMdmF/
         NQYHVBFP56Eus/f/tXDRE77DvgdKJH8RxHI+BqZiolK7SRT6PcHfX7kHyxbboojKXlpi
         AszEOfym4mfi0ROfeI76IQwJbEmGG+KnCaH0ZdZCWc7J9+tQTlC7BLbHqgUa2l7Ox2N2
         7OSw==
X-Gm-Message-State: APjAAAUYkTEoKNTRBVAX0gxqEaLYj73sh6rnSg68aemVYnDk2MVnfuZ2
	fQYMexe01i4z1GqL5NN6QAk=
X-Google-Smtp-Source: APXvYqyjYnufW3okWHFYJWavjWZJFnCHVj+uF2f5hJpQ8KmwC8uQhjmxdsMuLTtwl77jes690RwzGg==
X-Received: by 2002:a92:1d93:: with SMTP id g19mr474943ile.113.1571267958969;
        Wed, 16 Oct 2019 16:19:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3f8a:: with SMTP id m132ls144067ioa.13.gmail; Wed, 16
 Oct 2019 16:19:18 -0700 (PDT)
X-Received: by 2002:a6b:ef0d:: with SMTP id k13mr253224ioh.232.1571267958533;
        Wed, 16 Oct 2019 16:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571267958; cv=none;
        d=google.com; s=arc-20160816;
        b=wOCtSh5zz+qa04KDNG+YHSr4ssnxYA7h4w8PX9lLUlnh8SqKmJ+gtrD3aLhnVS/RI/
         9uxjz20bkVldeijCZ969nF/I66ihahV5XBP+0tEV02gQdtaB/eGpGhjauWCmPsxhpPnx
         oJy/AxdZ/Kaif8H8nALEUhsAIsR2bFLRVDnrWl0Falt/t7HfGdW8s1aAPzjaYuGFEZ+7
         ozZh8BWpqxS5rRHhDI0s93tDcf0+nUNNxi+2vG+1WrboMWihwws3vgbxiSar0mI146se
         9QoNvCNPVcVvRNV5rJbUmnJEYa6SpBLG7gp1plvYMcPPBGo2RFmkM3Lncehto3r5sNw9
         6iiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=1Ls32nSuaCrvd9DcMqB2w4/O0y9qaxtqFmkres4mLCc=;
        b=M1CX6sSwYPgfeBns/6MkaQwEQlLhoRucapDyEJNlPDYxVqTnVN5Ye1YIFqQCmu3LZu
         TkdK/jNIa3Qrbnm06vcvtsdO/jGVFJTgzddnTjeUDglrm+W3HnvNc90fkjuJ4H46P+Vj
         9MBbEzUGHAVzLWaopwtlfZVBRtVx+q52ck+jwhFw/TdG0JYpJQVce19x3k/6oU+EWMB8
         66xzcUs45RiFLWLNo5Q2fGerpFOFCgxmASEwZGE38QO2NpzgSToBI5qVpGo1wWl7suJ8
         QXswb/j6T5ixgH9ryB++y9WJMY35oUDdMoasIuhfcb7V2Gqixk8MidOhsjmZ6TZXkHHX
         +4sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ozMYZYt3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id s5si10935iol.1.2019.10.16.16.19.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 16:19:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id r1so126480pgj.12
        for <clang-built-linux@googlegroups.com>; Wed, 16 Oct 2019 16:19:18 -0700 (PDT)
X-Received: by 2002:a63:5448:: with SMTP id e8mr734933pgm.10.1571267957244;
 Wed, 16 Oct 2019 16:19:17 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Oct 2019 16:19:06 -0700
Message-ID: <CAKwvOd=QfaSFmD2jyafD0LJ218PkZkV6niJX_67hDes2zzBwBg@mail.gmail.com>
Subject: memory exhaustion aarch64 in prolog/epilog insertion
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ozMYZYt3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

aarch64 build regressed:
https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/246197698

smeenai on IRC confirmed fixed with:
https://reviews.llvm.org/D69018

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DQfaSFmD2jyafD0LJ218PkZkV6niJX_67hDes2zzBwBg%40mail.gmail.com.
