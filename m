Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRM6YX3QKGQEMQTV5KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 997332045CD
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 02:39:34 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id e192sf22129381ybf.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 17:39:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592872773; cv=pass;
        d=google.com; s=arc-20160816;
        b=HSWUo+WfdMlLx16Tzp0bspIa2Nhw1vLhNXcuPac3d/FG2q7SUPDemIcEYeH4+Bqx0n
         LQ0as0kKLkL6maUYTRZrXDHEC4KtywIVXlZr74ZORf8FHyL7JAxmhI2RpH2/1mabpAt3
         eKd+xnNPVhCcckWl0SPZGqC4zqw2o4a6GR9cihUu7xPNtv5K+/qh2789geSi6A2eeJ26
         4JBTmIZ90IVGSLxhR5TDN2wNGugK1UJ4xdZ3J1nyZBhsDPG4t/alL7V4jzkP0/gBWEFU
         YE1cDC3/4Cr7Kl2nM8rLw0HXEobH/6ImsECUh3pVOEtstyEzF309tAcyrK9t3VY0KJHe
         Wjmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=bXos+NxwG6mhpyPn9uz/vI9B4Gid/zhmMo/fgG5c58U=;
        b=Q3UmRp4hGEVDJhcAslVKEhpSgTZPlipUsSt1T3nth/aCMYw7LPgokPuacF64z81A0r
         xw5uDhd9FTjPGr7bpxE5+9CthzGPiKJ0Y22idUadx58KhfIuQjt2eklsHxqpstcp0N1U
         ROk1TZBnzv4uFK2v3BqH2O1ZHaSr3lSxN2wrQM0iI1cWFV4sw/D1l4F1EZCEfGt0RWzp
         oPUTv4pbBiGuRNmUlnTuJiaLOBPW03zJe0KoT+FfTCqPcr5z+NV8VHFygx/NbzXLwyR0
         o+uqEfKe8ajK6QGiEmPONeftE215gkRjTT2c0FB/CqJQZfIli51RRAqQFm4B+IthSpTj
         FNww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iBqtOtj6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bXos+NxwG6mhpyPn9uz/vI9B4Gid/zhmMo/fgG5c58U=;
        b=cDInz+XMRwWc6+ONou20Y3yEQLJwNJNBR5f7+8QsZDqfmBhzghbXFcfY12z+a6+fez
         mfQEnd4go54UbkAGyheZNNSlznrILyfM7P7vFJu6ClRqeFSkMETCOQrnVnx+3dzWWqXR
         t/+qV1UUtQxyN4N+A3pcgRSpOXf+oYJGs5zRoUBco3y1xUXwXXZyJR3Gp8DJmpQ9qyUE
         8EnTyhPhrHSzjmEyd7kw9oE5qHlHqOnjXSFpibfY+OQ+45KWqyg3zemQI/taAx8SPNEr
         P4iApLWKqYCqDADg4dQbnpI7vAO07YgPYYnxWoyq6TELOglv8fVgaZxWLOKSzNBfRbMZ
         +yTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bXos+NxwG6mhpyPn9uz/vI9B4Gid/zhmMo/fgG5c58U=;
        b=TPpuGrhi4SjLGJ4N1fO6/5Z61srmv5mF86U1zJyH92yHqs2XVvtlKRl0ktKQofHB+u
         78UvDs07nWiup4F5x+jv1D3MfQ+pXESVg4PcXljC5yo7UhT+YiK9YBusb8ufGoW9pHGJ
         uwZ6e87H6i+6Kk9HDWiAS6YS++uXDQaPj5rnU9Eazd1GfcAiwLf/I7F6YY75KWInbtte
         BtEHduEodVSVVvziJ1ktg1yNq9CIMyXtrsXPB+wA2BOBpl7OZoDOf8uY0XGtK8y6BUjV
         aAawyabCzcEu670Lj3CfxFnC0mnPN2MrUaUFKlOcbMFJRAxC+QdJogvo2KwIC9O5bL0r
         hqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bXos+NxwG6mhpyPn9uz/vI9B4Gid/zhmMo/fgG5c58U=;
        b=LKWmZJdW3p7lhtPePNRkYC2Zc0qNeMJj1qUaFydn2X6NRav64CpEXtisNQYOR+T7Hh
         WWZJbjqxpEpg+gg0KDck/m9kvofAa1W9WQIQUCCw5zYqs4LbOzYPnQmx/i5PkEfKWEJw
         XlJTLFYgI+FZTeLNKg/8pthfM0Vfhm4rNfjWthEALl4tHyLBymCiUWsyIAwavwQL52SV
         k1KMUTHpHTPee7e7jZlgcbRkItq6zjosv8c+5MZ7tcpSWMnTl+UxlJT2Ny/dC9eyFeXo
         KCl0QzpIKskvvSVZXRCSIZ2Eb/T7mm58UDVS+oXboERvna6u2DTkTS9ZBEtC4C3I8dsh
         8F/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532VYzEgP9C3pddXjpp5Wu6JioPi+LNTRLASGjS9NV6gCYzBrImy
	vwDn7QeoHdOSkO0O50WuCiQ=
X-Google-Smtp-Source: ABdhPJzckCyXT7BeDLLUxtHmwWCj/oeCR+c/y1i6C/ZnBxUOgTMWAEB2U/RWUU5NcH6LjHhhGIDuSA==
X-Received: by 2002:a25:d6c1:: with SMTP id n184mr31470520ybg.303.1592872773524;
        Mon, 22 Jun 2020 17:39:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ec5:: with SMTP id 188ls7139704ybo.11.gmail; Mon, 22 Jun
 2020 17:39:33 -0700 (PDT)
X-Received: by 2002:a25:aa89:: with SMTP id t9mr33062181ybi.348.1592872773254;
        Mon, 22 Jun 2020 17:39:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592872773; cv=none;
        d=google.com; s=arc-20160816;
        b=rEyWebFv8zQXJEgVF77XIJpq19MqloL5CPc7DnsEI32ZppaPQJVY6G9yIc4EPaBQBN
         6MH+ihk8OHLGph74WJ9H2/EHIjJ0Z3ok1fxWdqpqu45UXUbBfxgOWk0yeqtkFdqhS6RX
         n8UZuDpLvY9ECjBvz30RTTlNoW0yWz4Jj27paEKAU3MfhPcn6Kv3agIQ9t8zSz7sU3W0
         30vCFe+gYtPPB6TkGFLH2pRxPDYEZTgY7cGYsL5hMr4QIsAmyH1Wnb/vcYvQBJ42+7Zh
         arx8JSEVFKtiKQmuE7yg4ZuD03rDlSbdnCpRMQIqeypEo5TnpMRJZE74j3fzE6g/xHnC
         M24A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8gg5xcfbj2whqXxmSEa9T/iWOw2YwyVIV2mrfaawyUE=;
        b=aLSmqGeR0lPOjF/DYXSJ9X3Jl6J/g0m5bveI3DzrwDXVEejMjXRnCndO3HOCw7qJYx
         nXj5uppLlLDhG10n13EEgaYudFdM/1TewiMej1A443q2TrChfoUqCo0ssqF6h1Q1MzhL
         UZSN1M3VWqDgywDTSHeFFIH4hKs/CgFP+YeH13YBRMso/20IwDxIOZ9PBTMSJardx8ji
         sJRACdlTKib9WntHPR1PV2ujiwvvFsnK0VVmZwdUjcmJhgRlN920ms/PhcwwnZNm5LOX
         YySbve7Lf71YvLL56Pb7a5YwW+qpXqfIscr9bpkctr+4ojSvReRcPNxBaqgaSY+jw4Ff
         3dhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iBqtOtj6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id n63si959491ybb.1.2020.06.22.17.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 17:39:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id t25so17376443oij.7
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 17:39:33 -0700 (PDT)
X-Received: by 2002:a05:6808:295:: with SMTP id z21mr14399674oic.178.1592872772765;
        Mon, 22 Jun 2020 17:39:32 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id y31sm3677828otb.41.2020.06.22.17.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 17:39:32 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Christoph Hellwig <hch@lst.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 0/2] Small fixes around cacheflush.h
Date: Mon, 22 Jun 2020 16:47:38 -0700
Message-Id: <20200622234740.72825-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iBqtOtj6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi all,

These two patches are the culmination of the small discussion here:

https://lore.kernel.org/lkml/CAMuHMdVSduTOi5bUgF9sLQdGADwyL1+qALWsKgin1TeOLGhAKQ@mail.gmail.com/

I have fallen behind on fixing issues so sorry for not sending these
sooner and letting these warnings slip into mainline. Please let me know
if there are any comments or concerns. They are two completely
independent patches so if they need to be routed via separate trees,
that is fine. It was just easier to send them together since they are
dealing with the same problem.

Cheers,
Nathan


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622234740.72825-1-natechancellor%40gmail.com.
