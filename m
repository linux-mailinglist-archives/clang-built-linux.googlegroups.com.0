Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBNWWYDVQKGQE56VNPLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7819BA94E5
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:23:02 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id o5sf9485wrg.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:23:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567632182; cv=pass;
        d=google.com; s=arc-20160816;
        b=BUd5zRHgd6c5p3Or/iswop8mrUghPXF3tz9tBMES4L1LjaA0ITlEStLNxA6H023Xwo
         DhLwv3Uh6+1/ikIQvOvP2eW1+z+lTg8JhwVBjcfTE2Qb/YN8Und3DIs2aOY5D6kCIm4m
         CaYbu0T3Yak0oLaF1kYeXOwTaqpCMgCIDBdzh7UIN6PfdofXNuB/f8F/tgFBYbDJQX4z
         G2oGdlsdobFnxToNfOTMJsIOgcITlHfNETkgbmxguNVnBvNs/ZDrOWmp1obWM6xP4UcY
         z3RUntBpwIEe1aUgkpOmFG/z69K7sPqTcTDl91nYaaXTTfy2Si/8eSM86aYn5er+0wHG
         EicA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=gbK87KefFRw5PO6eSSzOeBkEBS65ofKyxRO6d5VP14I=;
        b=v+5jNt8aIa7ftZTFK9EZ9lsjU7YNV7PS//UMY+WUTD6wyKz0SyuMpky90+fwvRThA3
         b/+Mlen9Hcn2mf0hb5kcYlaOg2D+SFnNyzW+0tpqSqS1GWLG4paKF1ICGkGWIsnY79jq
         f8EV/NyvbLXl5yh8pUn5YB5maTjotYqxmqUsmbBe49f/AM3zeyo+YZTKhHboGRSwsWuY
         qdgcnQtLO0YIDFE+LO0txkQ5gU4OGqpRtj3lBsecm99Z1/01GOXbPgAGK5u9xcFaPcQd
         Wsy9E0HxrKes08vn9Yz0lhG+AP5/XUdNfJnZUC7u42M0WNzUrgf++YHeSMZ2eZPQPriH
         2flA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=e4KCsujI;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gbK87KefFRw5PO6eSSzOeBkEBS65ofKyxRO6d5VP14I=;
        b=huWZIH+kh1HVO0U9FYVq0IWOBH9MzRaMqiI8VLnJUe4Ff4woCcwwjHMSmaDkMJHxM1
         XaqXdB9Ol9khs82apbPY+doSJj1uR8LuyuLhgsN8VhEfSrCqj00C5Q4DxorEsnFoN3UJ
         dEh0/8Q2eJ9O6gs0N7vO4YTKBt2JvtdKVk3qsdll64fenLwbNT0WIb1lViscAK0TbakG
         iWpgXx0rLUnqqNTWvbMVTl15+XJWiM7Z4lVj6d3eizmgjJSFGg53ZP65uxl8fN+KXRkX
         alRjIJluOtYQkuDMH44ixP/2Nq9Wrf8+OWQCDYjI862G/ojwvx03KXgF1oqmAxVsHLbf
         5Czg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gbK87KefFRw5PO6eSSzOeBkEBS65ofKyxRO6d5VP14I=;
        b=CjKEq1b3+NDi1QG+GQUrD6gGLYfRKq0BZxFf0SgvI2ZN28JYWKKShL8hCYP/PzSVig
         Zp101tvB8dGXM5/2ttJqsEMhvWP1zH6rPZTCLAcGDar7cWmT4kpkG1XZuX/F2fiOYrb2
         G5Lx3REAYICO0e7R64JQ1r88lD61l5IwjEoIxmrPJGI8mY2tA6/FV58ekv4nR6oUQOCn
         RrCN5Q1JxdnLQH/2NyGOgyT4FZc6vKDX7Px4J59DH1njmaZ4YiorkIwJggH8atDRXspm
         GC4YaATIrgozlXfV1Nr3NpEJ5I4v2XfQtCaDfDcBPH0KiVtBivvrip/PoJTW3bE55xID
         yuKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWLy9lO3QSS3UMkZ8S5Jq/NvWbBduTwoKlM+E0j/Er5LDQD5wni
	94jWdFA9zvxMLjjopNbU2Po=
X-Google-Smtp-Source: APXvYqynfUZq6G/Falrcd86x/s/A4JFNavJIVCLAq1SHtnXQTLz3j2okrhfFa3Fl0Cuu/D++i/Hprg==
X-Received: by 2002:a1c:9d15:: with SMTP id g21mr249183wme.96.1567632182176;
        Wed, 04 Sep 2019 14:23:02 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:6c06:: with SMTP id h6ls1666244wmc.3.gmail; Wed, 04 Sep
 2019 14:23:01 -0700 (PDT)
X-Received: by 2002:a1c:7c15:: with SMTP id x21mr251646wmc.154.1567632181779;
        Wed, 04 Sep 2019 14:23:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567632181; cv=none;
        d=google.com; s=arc-20160816;
        b=z5XPaJdhHYI373BgeDd2Sdl7cg1d9pYVK3ZwolvctVIdXQm3SCSiXCdmRV2waf/qOu
         Srl52qWBkWTBtlY3CBxhboDLJxOpAsGYsyQS2VqfI5aMknoWjk8x8kimUA1jE4VM6OZG
         uBKAGloO9TaCbrNJXqUHmEDb1xzk6QGWKiXOl61ekd+A4nh1qghzA0K4d91t9+kWD1pI
         1Owqt4qdUAhlesrnCva8VPUyNzurIrpDR0/gFqMniEr7dflLr5L7uZ6aCdtRnL4cma9g
         TMc21INX9ZSWMNLfb37Pfgs5geq1zv//0Qyqsf86Ro18dBB9BMwCvt7a0LcCWgpIghpR
         qzxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=y0/K/3NHW2BoW66hjF3E64lXnccuPIx+Txfbqzf3jL0=;
        b=e16LqCZrQUaFp3WpI3AqKWEtAVOJw0M3Omr3oygOsQEAsOs9UIRdrsPViszSqaorPE
         dYb8AzWvyyvm0TQmuX+16tDdDiEh+TLo7+wJU8BaG4u6wMnhAQWnQIy0hUxjXWk537TV
         ACf4oGRWblTQinO6z2g0LFeIbAOMY0C6LH46PpSmshmDCu/o06U1Zs3ayW9BnVsIW0Vq
         IAQGpH4P7QO6CYdpEguieLfGRAssKUL3yQ+88tN6I9EeWhw8YM83sDmNy2tSnvZptVPN
         WicN6E98shyMKbVUjBXgcVKtM+1l8hSJVIqtwIGT4mgKxm3Yf/SbaW0RytlmoHLNA1/c
         zUiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=e4KCsujI;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id u20si7702wmc.0.2019.09.04.14.23.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:23:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id d5so164594lja.10
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:23:01 -0700 (PDT)
X-Received: by 2002:a2e:9882:: with SMTP id b2mr3706041ljj.225.1567632181203;
        Wed, 04 Sep 2019 14:23:01 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id s8sm3540836ljd.94.2019.09.04.14.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 14:23:00 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH bpf-next 0/8] samples: bpf: improve/fix cross-compilation
Date: Thu,  5 Sep 2019 00:22:04 +0300
Message-Id: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=e4KCsujI;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Type: text/plain; charset="UTF-8"
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

This series contains mainly fixes/improvements for cross-compilation
(also verified on native platform build), tested on arm, but intended
for any arch.

Initial RFC link:
https://lkml.org/lkml/2019/8/29/1665

Besides the pathces given here, the RFC also contains couple patches
related to llvm clang
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang

The change touches not only cross-compilation and can have impact on
other archs and build environments, so might be good idea to verify
it in order to add appropriate changes, some warn options could be
tuned also.

Ivan Khoronzhuk (8):
  samples: bpf: Makefile: use --target from cross-compile
  samples: bpf: Makefile: remove target for native build
  libbpf: Makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf
    targets
  samples: bpf: use own EXTRA_CFLAGS for clang commands
  samples: bpf: Makefile: use vars from KBUILD_CFLAGS to handle linux
    headers
  samples: bpf: makefile: fix HDR_PROBE "echo"
  samples: bpf: add makefile.prog for separate CC build
  samples: bpf: Makefile: base progs build on Makefile.progs

 samples/bpf/Makefile      | 177 ++++++++++++++++++++++----------------
 samples/bpf/Makefile.prog |  77 +++++++++++++++++
 samples/bpf/README.rst    |   7 ++
 tools/lib/bpf/Makefile    |  11 ++-
 4 files changed, 197 insertions(+), 75 deletions(-)
 create mode 100644 samples/bpf/Makefile.prog

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190904212212.13052-1-ivan.khoronzhuk%40linaro.org.
