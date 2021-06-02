Return-Path: <clang-built-linux+bncBC53FPW2UIOBBGFR3OCQMGQEQN7UDCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD0F397DD8
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 03:02:16 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id h21-20020a2ea4950000b0290113ab72f778sf48405lji.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 18:02:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622595736; cv=pass;
        d=google.com; s=arc-20160816;
        b=XwJt70PtRsnRkhgpvv1byQp9Ie7sNpqdm76SCwkVZqubZ5SH0DCxbryHmgKFlpa8aa
         oBGlcBYshX37+310JEx4BXvIOJr+RYA2FDWgxKkMN6dGDfEPUigLZaK0tAMA0vOqUg9f
         MSwF4Vm/4PWFeb7UAEfc3g7E7TcPdk3skBsCs+US9KCVF52BoZ/sGVI0ljaccg8mDIZz
         QR9nAVd88+TZ2lAHXIBOTm1nO15N7owUchWmn3p7Bnso2n3XzAYDGZARqPYqRt736p93
         DRESodBvxz90gLOtTdcj+MR9go6IquGWLqaetIS66fpj7QPcVnx+ZD4rJwbj73QieMk8
         Pe3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=5lhC/DeaMFPA/3WUOrxXqMjd4gK7ZXTpc2cdPbnG0us=;
        b=bpBXtykrZq5cBQYzxMvVV/oQSQxZwCabfTGTfWXDNTXPkjYEnSYik2o1DbiCB3UhNk
         AybsjhOHuemaOdY34LvGjPcQcngZ68kThU/mPsv1ZQCNbKbS5GZknjc6s9rlg+NK3HOe
         yry7iiRGJpYBBrt67TahOjIyS0U0GJK3He5KV/vKa5HAfJEfIy3XrwAoSVZvelH6MV0d
         4UH851ljvMk2BhXrc57iYzy7T7ZQuGy1dJxO4gTqjtQc8UFmfITjAqx7T0exWEKrZHSB
         LscT0LmkX524tKEF9vJ/9fWF4AIH2yWjbWX/qAlpgx3t39i6B4cJl3dDiTgnfY6LZmPF
         UugQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QwaNkysr;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5lhC/DeaMFPA/3WUOrxXqMjd4gK7ZXTpc2cdPbnG0us=;
        b=ddt2lky5PPJKMywctyEjfk57842kIRwlBxCILJ5zvIQ/abzfOiEBsWuLhayiTPLjdd
         AFw1trkUN4SnP8uluFkTAN6CT8TDHC83NRTZf6nNwFTr/WAiczLgC6u5F8EzhElxRJqJ
         cFG8N1iZQr+s6dvaue2YN0YmiL0GmQpxhCrFwv3QqflucgqXlpwXmNs+SIJ/CX7ntMQY
         /8kXQh1WzlagJhkbCCXL5E7AHjSVKLhCNUEa4YjTmW/gJjB+ZufetSOpcqoO6iFsI9cT
         mzLquTiMqZc//IbJZXrCZSn0lHl0RUX/x9YGBhsS/LLeyksTvppsnN6+NI/seslTpgnc
         hn/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5lhC/DeaMFPA/3WUOrxXqMjd4gK7ZXTpc2cdPbnG0us=;
        b=ssH5vpnjahrzMJBtxkJm1B/kj8brYyBEQGOypAZVH9UY6H4qlIE7+FxwWX1Znk11qM
         w09EnH3p2GHsRVU4PcL+ulmMXMSTPUM9HdXLNsnvoY9x64YXUJTPNfeWZRhBYfcUcSV1
         en/Fr0MobWf3fSb0EONSETfFYk9hGdNVIW+KCxOv44vqt3ww/czqNc/SuLHNUUpSZkw8
         /J1HiZMfmHMlqax2uT5Npfed8ULCgeUS15PzWLlE90nVLdwPeo0HjdIpv4j/j8/oI+kR
         +c5/23ikdx1Wg7QEShZWzRWIDovT7SaaBhaRtD/csHn4pp4qmPbUfSD++jyQM0yUoduF
         xJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5lhC/DeaMFPA/3WUOrxXqMjd4gK7ZXTpc2cdPbnG0us=;
        b=XDSb989YQz7Vlyd0B2gRQTA52s3DJQ4yYsrj0XHLiZwr7ZFWclCgPyqsPGmCmh93gu
         eEtHzUOWmqkbHFSYlq6LAq71mEIkBeEaAU4dS8pND7e1u6UCoDbGs3+4e2itaEt0GPkb
         84DFhY6tQ+kSRI8NzADWOcSkFpmtCkkiUsIspIaM7xmNaLkvALz6uMJYIMQLQFR8kC6b
         0sui71/+qL4FMBIjjkK+3z7G1eLPBXfjqbRIVohhdUIVvzoUDYlBCUyEF5AO98OpBjaM
         uheIWEUz0jTmgKKMWSRSSBYZ2S10RtToJKVLwDSXDX31B4dTCCVW4Y+GhI56hGAB619P
         qT/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rsBaof3XL28zCvtlVMT4F6DVuuN2tQQFGMK1nTtR+jMVY4Luy
	f+I+jb0tii7dBBpIcgBIhx8=
X-Google-Smtp-Source: ABdhPJx9fy44hDV/4AY48mRK1il8ZIXeLtHRMxfgTizNUl7/NWLxEa1sf48AOguoc9HH9b/qWiPnWQ==
X-Received: by 2002:a05:651c:105a:: with SMTP id x26mr23078509ljm.440.1622595736429;
        Tue, 01 Jun 2021 18:02:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9617:: with SMTP id v23ls778284ljh.7.gmail; Tue, 01 Jun
 2021 18:02:15 -0700 (PDT)
X-Received: by 2002:a2e:bf21:: with SMTP id c33mr23322039ljr.28.1622595735293;
        Tue, 01 Jun 2021 18:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622595735; cv=none;
        d=google.com; s=arc-20160816;
        b=g79C5XLgpXeKOOEkzgYHjFKjXvAMROCqKWHOU17S4beg2cPj+WzuadXq620c6emwKq
         itbl+BVnG26SJnLSFqLgWfDjLsvJbQKpMEnrvKLC8v4+T/rxcJTlrY6wOwLLe33wbFVA
         e6XadYHYTibWTiCfXMOsL9vNVyG10hmzpYPN6CRqKWA6dvEQY8zvj1aAAF74pzlrSjOn
         eKw1szuqwlL86NhP8viAprV6+O4sUcDkmDO0eVuslOcqg5bir8bsS7yv+aqz9uLKkNS8
         +KDzFtBeRlNjw6DXA2FLq4f6KK661xajSOU1b9WPrHAcrFmgeKYkmW3dtW6dbWbBygCp
         dHvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=a6baHQsAJ9xJh2UaKZ3zO4HQerzx/uv7qHQfFuXijes=;
        b=am3ypYKo+IlBgKEIOROvXY4N8peGXFyRUIeMfi7wb7+tKjt+PFPCq/GF1iRJzGSFVR
         v6VQuHFxvlo+9uQYFN6Y3EsFUdkogSFXR0AcvuKNJ55uP0+XIy3Ag1DKP4QIax1OFxXE
         IAiU9RKvYxllNNyF5Bnv0gT8ZzZnWYMN+/mTemIvV1rQLNRYMkZn7DJEPYoAI1t0Ds8S
         56zW9qYceiuaQW/j7Tc2B1M2QyuSmDqpiuO8fVkQ5+0dJfVuqSHp4N+IAFGvrYDdM6c/
         +PzkuMmCqBykiLUNQYXx5tLdF93tDCwCnPiKDCHz/5Bf/WUDtxu2e69BjB3cEHOPyj08
         INgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QwaNkysr;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id z25si914672lfu.6.2021.06.01.18.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 18:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id m3so356641lji.12
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 18:02:15 -0700 (PDT)
X-Received: by 2002:a2e:9c99:: with SMTP id x25mr457943lji.310.1622595735151;
        Tue, 01 Jun 2021 18:02:15 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4yb9bh06yk5jm2qt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:3d09:bda0:2327:559b])
        by smtp.gmail.com with ESMTPSA id d7sm1825403lfg.253.2021.06.01.18.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 18:02:14 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	samitolvanen@google.com,
	morbo@google.com,
	keescook@chromium.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/1] pgo: Fix allocate_node() handling of non-vmlinux nodes
Date: Wed,  2 Jun 2021 03:57:02 +0300
Message-Id: <20210602005702.9650-1-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QwaNkysr;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::232
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently allocate_node() will reserve nodes even if *p
doesn't point into __llvm_prf_data_start - __llvm_prf_data_end
range.

This is wrong:

Any instrumented modules that are not part of vmlinux
(built-in) will "steal" available nodes away from vmlinux.
This can result in exhaustion of nodes for vmlinux
and less accurate profile data.

Either way, any profiling data generated by loaded modules, 
if any, is unusable from vmlinux.profraw.
So just filtter them out.

Jarmo Tiitto (1):
  pgo: Fix allocate_node() handling of non-vmlinux nodes.

 kernel/pgo/instrument.c | 4 ++++
 1 file changed, 4 insertions(+)

-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210602005702.9650-1-jarmo.tiitto%40gmail.com.
