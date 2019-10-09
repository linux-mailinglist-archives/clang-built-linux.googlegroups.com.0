Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBB4M7HWAKGQE3YSCNNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id AB29FD19B8
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:41:43 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id c188sf1111908wmd.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:41:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653703; cv=pass;
        d=google.com; s=arc-20160816;
        b=kMOHVooWc0zv3Ss59hZa1faR1fE2R1HaRiNEzzqoQKRv5Go8iCAwVewuQ3lCXGhAdw
         Wlr45Z5W2koQOPpGQygtC/OHPmrKdEB6EoMBAhILEczkRZy7YwKCguvFM58etxVLkS7I
         Sseg7x2fE+lGr3eVGg6kbuq7F75sijGjp3zZn1KXeQpEd6MUaeA37AIrUn2cfjStmjKu
         MBCnaQUWGW7S+royEzGRwNqDm+5MgO4e7dXfH2sVTfE/GBkHKJlFUQaWsNri3j1tRu+9
         V7NjF88bobScLaQnLD4812JWKn3zwPfaysb++XOgjD+AVNzw2wIL/2GD/eF5vmTYXk3g
         eOyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=irn1f+dFclWxYMlkwxV/k3iZv2gqv9iLp/JZRB1gmC8=;
        b=byP4ME6s65LtbNZuMz0F4I/4qBq9pfvxIwGxFgL0d2AtmNj5MqdowtY6jsBfLCH/1a
         CAfM1noxbSbYzF5dg7yhMzlxWu+j1JP4ForCfqTXOewJNRMeEeupcy5KySGLsaLcGZmy
         hoys0jtQ/vNTrYHNPKl0KJ+Dj5f2Ovgv6LqkYNQmDukYx5YjSpE3KZvGXCKVmPVM60QN
         eV7zXctNnCEE9b9o1fNxdkE0ydpM3kcwFCmiYupbePCcRiTa+fzh0V9GBjLeuTKysM/I
         4h7jNg1DT0IEZaC2pDiQJ6Dj3qjvgIJ44B78eVgySvgkrFgcArKzC6WAW+6r5kpPy+4N
         yaeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=b82CPx+f;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=irn1f+dFclWxYMlkwxV/k3iZv2gqv9iLp/JZRB1gmC8=;
        b=B9UmUTuX7IWMo1YgYB0nIRs34cleLzu8XWLaeMhLnF2KlA0akd3UGsvOZ6xZBDDOzq
         dQH5FrJa5e66IyC1gs3X7yg8Vj8UidgH2wOukB9aGii8C8XDvJ2As5+lCfXBNOSvsy1d
         9UDzbgZIeU6b0n7R0J5uMUm8oeqBnGbSMsA6AnNRsVw7kqp64Dx98yQLss/KSL+xvUDm
         fgZCSkar93v0+Em0HkpfYaJJGVZvqxXoV74CZ9eVZ7ribsQI62ji+4BQamqT2V0m+xqI
         NV9PcXQYajc2IScw1LbTX+60fMU2wMvJHu02D7A3lhXmxyqltybQsfDOWKXyTlmVu2F5
         VZZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=irn1f+dFclWxYMlkwxV/k3iZv2gqv9iLp/JZRB1gmC8=;
        b=N/HreVm/O+l72B2+naUHHHLmzOFLKR8LgHpXoYbRUeClC1B4qUYw8XJI2D6HmRCSmi
         WsxfxsRKvREKwmOlkax2JQ9MKt3nmDG6CGiuYcqsuj7Al82/rq2xpV1evCNQygdcUFOB
         9IBpiRWdeVmNLdWWWPMcWz2YDLGg56xmnMk6mH/2DmQHtxXiuJUIUz+7Ilae9IX+wpdU
         LoDjDR2oYbwlNGdc1tRfyp1BYOeO6FcyfhOg1hxx/gMwzHD/X+UuMEDOoxLpYPdUc2ad
         3JM8xO1bXDE2666vTlBThu4t5OIb3vglBoVBGCy0wdm9Dx8FXNw4CKsB1BbFAMIsG/81
         929A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViRikKSVZEErSb8+ip4dfrnvs821eCT/LyCCtQYi6q3r65I44r
	OZIqkQyCoE57wq1l2rekRZY=
X-Google-Smtp-Source: APXvYqxxhNt6/6e53Uweot440EibhjEhYEmnUx2NjSYqDlFwF/MJwmsKT1TkeiNQi5LMm6hmEnAvQA==
X-Received: by 2002:adf:ed52:: with SMTP id u18mr4887995wro.16.1570653703374;
        Wed, 09 Oct 2019 13:41:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7304:: with SMTP id d4ls583599wmb.0.canary-gmail; Wed,
 09 Oct 2019 13:41:42 -0700 (PDT)
X-Received: by 2002:a1c:41c1:: with SMTP id o184mr4360611wma.81.1570653702825;
        Wed, 09 Oct 2019 13:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653702; cv=none;
        d=google.com; s=arc-20160816;
        b=tiLcSHOL8bMx25VxxmRaFVD2Obetoeb58AGb40B71Z9zs6gogmZPJFVsa9rl4q+2XQ
         W38JAmvyQabMg0sYTpbcl5/PkrLRdaTAFeE9k1bnCaaf7OUgP9F27cZtA9PwA0boPQ3E
         N8C8OD61MNox5ZPJyWGZqEzI53BNHT1vopUgmLH1b861qvg2LefqNJ9zFDOiPpyXglO2
         kCkJ/qyv5bkU5jzp0psftkAHum5hT1vfjMuKeoluw07Vs5J5TC3apFmYxhoJjG4nYEDF
         bQjCRUYSHny7V+G65w5zu7u8N/EHrJar3KzszMwvtlqomTK0KqYq+6GtWy4n/QsXlZHP
         2ocA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=y12OqUDXt0uUd8S/w/N9B4j5fJB9b6dEGe48WxLpJQ0=;
        b=Z50JJOhQiVLVD9eiKCz0avWmFx6nrVYiY6J0ufsXPuEcVqbNBGgLNPqRSjFMWT3ubP
         sdlOIF81+sb5Tamqm8bJFVSS2XAUqnOw0gy9g8wafr8IzQZmMEtibjCXwJp3fSgulaF7
         f/p9T5ymHle7yrNSO3gsxOVOc+upFbRveBsLAFyQtFSOqpoVNK7fpsI0B3OnR9oY5qEl
         qRvMNVghEu0A92p3pIwGEDn6AbRvRg2DTgzVqTs+ejXSrFWOrxDIjdPDHVKFmgDKr/Sb
         md1oYN3O7ilDoCmv3CohCROpm7CSGrigO0oJWtGgreD0YUgh7SGIqInEBkdsEmOoOJy1
         s5sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=b82CPx+f;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id s194si420699wme.2.2019.10.09.13.41.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:41:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id q64so3847528ljb.12
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:41:42 -0700 (PDT)
X-Received: by 2002:a2e:7e05:: with SMTP id z5mr3623227ljc.120.1570653702474;
        Wed, 09 Oct 2019 13:41:42 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:41 -0700 (PDT)
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
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v4 bpf-next 02/15] samples/bpf: fix cookie_uid_helper_example obj build
Date: Wed,  9 Oct 2019 23:41:21 +0300
Message-Id: <20191009204134.26960-3-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=b82CPx+f;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Don't list userspace "cookie_uid_helper_example" object in list for
bpf objects.

'always' target is used for listing bpf programs, but
'cookie_uid_helper_example.o' is a user space ELF file, and covered
by rule `per_socket_stats_example`, so shouldn't be in 'always'.
Let us remove `always += cookie_uid_helper_example.o`, which avoids
breaking cross compilation due to mismatched includes.

Acked-by: Andrii Nakryiko <andriin@fb.com>
Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 4f61725b1d86..045fa43842e6 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -145,7 +145,6 @@ always += sampleip_kern.o
 always += lwt_len_hist_kern.o
 always += xdp_tx_iptunnel_kern.o
 always += test_map_in_map_kern.o
-always += cookie_uid_helper_example.o
 always += tcp_synrto_kern.o
 always += tcp_rwnd_kern.o
 always += tcp_bufs_kern.o
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-3-ivan.khoronzhuk%40linaro.org.
