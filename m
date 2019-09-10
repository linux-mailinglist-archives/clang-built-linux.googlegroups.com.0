Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBMH23XVQKGQEOAL3PTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD68AE84D
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 12:38:41 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id a4sf7485363wrg.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 03:38:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568111921; cv=pass;
        d=google.com; s=arc-20160816;
        b=ERkmMHgIyTthw6LH6JEflA+13tX3CdFkX2oBlRPyCVJW/lSVEzTtNBQ4fdPxJCwgIC
         +PX2rQ656TAub9lFWggzApyHz/doF0zqDXHhjuv5VILkrLCRUo/fCS6chCON9c2QjPT6
         QJgBvQKyn4QvRBuI1u2RArtSh3A1aAM/1e6v57/37cYpGUBmjlOTfvB/U6fUsH3rUPI6
         ioHCQopaJ9ziZGBFvLX9nPjSWQl2+KsyYUHqhbeB/tFRVxi5Q8rEC5tSWAlc9MmEcufu
         8nB8MeqE9apPhiJmQWbzHCMmxYgLmFPUzuPrVIs3/4jDWvf140YEqLqvcAk1pudnsl7a
         x/tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=j+GzeyTDSF0yZzn7p0S4++VbglBA4Y9Hb8Q/7dMxMSE=;
        b=pJ9vHvU90/qnsl/Qh8hbFkRkitXebyVmjnYjN7TcZBe16EgIVStUwNMp4XfkwFkWcX
         rqa6VcTdk0rBcXcGxt9VVZ2EH6kiqawaIR8/XL98j2isHBlJumhrS3adGfk9YJUH3lBR
         X4kfA+8KSZDtcH7UMFa0v2PQQAJFqhZmFfKATT3KSDWEdV00dpU2/l++mVQT7iCijAP8
         WibJVQVeOc2x64XNVsKuY6HSD+B8TeGoGGkg/Z3WSpjSwmsMNowIadU1My/4OVyhp+v8
         G0qiT3wxOV0rVFddb7UO/5Ho/NkLebVZqKhAItg7BYlyNtFLjsvd/Kj1zzE3UeUmIOA+
         Cfug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=d1NV8iFC;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+GzeyTDSF0yZzn7p0S4++VbglBA4Y9Hb8Q/7dMxMSE=;
        b=CN4yJsZYVSOz9dg3xsLYIGCe35IU1E4TqDGr7ctfZlE7GVy0yK/dXiSxwejcF4LKWO
         ciWGKgGj46Umcu1JrEvISDXuum704CCQQl7UOJoOE9rAnBj2kxScqWB0J8hdE9ANiRZN
         XVEBUPdsIrHKWBVLL/IgN66uSyV+juzia0GiRaS5sx3y5KnRK0obXv17qy1jmSMRS4AJ
         2yrg8p7y9S9hq1GO4Z/6dfUZ2O0cNUshPxLO13bnZZCue0/8cUik3Qqw3xr1VDAF5Q72
         eHvqXHP4XKmPBDzVYv0X1scVG9+5enEpZd920+7tw2SzTN9Peka+kh5OobMTWEKuiXBv
         HAQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j+GzeyTDSF0yZzn7p0S4++VbglBA4Y9Hb8Q/7dMxMSE=;
        b=gETb++7pcOGjytgokuOc5l7zHfacvYUTEVOywtUiFcSY0wpLyDO14ZIDesraFkuzZi
         JWBRU7t1rE4+ZuClMuLjwY4KTTteYyzGvb2Eh59w7kiQ79mzvqovH0Y8ZQFy+Ul1mpJl
         yZ2hMs9YYfGp3skDK+fudj5YADRpP6bswNiGQNyIIBBExb9wFsPf7CsSwaYV8aBO9r4r
         55ShX1WbMzpQNdZTlyTel5nKNZArJCTin1H/jNiW8PydgsigcGopB/PCDxzNsCgdN9KZ
         4OB05LksnJSAjKsgWBXgiz5wFFD+AYS0r/ySaWFHDI6Hqm8WEXtFMwpY5X6PXQeQPNs7
         FE2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUfkmfAa7HoQS1Wn4K32pf/G8geZe4RmAgxFOgf4LvAQSrB/LYw
	wAfFUiLPumxM0ytXQx5QEkA=
X-Google-Smtp-Source: APXvYqwNtdYsB6qp2u4SStGtIM/VgIWDwseXgl8kwuH/TDO8U8wwGdL4ffrtZxQ9xh34Fvxh7BYAQQ==
X-Received: by 2002:adf:e390:: with SMTP id e16mr26249090wrm.29.1568111921076;
        Tue, 10 Sep 2019 03:38:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb44:: with SMTP id u4ls5197466wrn.2.gmail; Tue, 10 Sep
 2019 03:38:40 -0700 (PDT)
X-Received: by 2002:a05:6000:1101:: with SMTP id z1mr20598089wrw.332.1568111920630;
        Tue, 10 Sep 2019 03:38:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568111920; cv=none;
        d=google.com; s=arc-20160816;
        b=Oi7yhKFnwZOl5ZaOONG/wJsoYT2hikwCuKOcei0leBHvxr0wkK3KdzHGUjVg9iq8vr
         nNMt3y775rFBoNsEm6RnbobH/2qweM1H5tgTG9insJjqAt/h45hctWh5sJ48Hgv/wo0p
         pi1UduAyouO6ntdMqOdoSka/CpglJtWbDoe6kQYWPqLtL3mhdRWW4Gjg3kpSEzR9mDnH
         Wm65RWeyZomUZVViZ1iD+ACKsUCbaALciGzOHMBIkT+K3GSmvQXEB1S7SUVXgx6yPlM/
         wh0MPBPpkuyVcuf7QXfuXJtD+4pYvoIc/b9eqT72dRoiwL/Z9U66TfbmLbU+lS0oEwiE
         x3Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=UKgtTI57zCb7K8E5dLif5y6EhTQqVERMGZla7VwIMYQ=;
        b=cFeB2A1wRwCQpdGg7YnAHqj54SAC3fEWa1SjHtGDZvnz0VnPG23tpsHEn3tXSQlLWC
         84qz3CuK5nSwldwsF7EWX61nX9JDWt04f+D0YGgxL7jVbAVIPnrr77x65hHGDCNuIU0k
         C8euUTLXwPS39HFTu/9s6rmVybaVi33jiSd/z5zoByUFZS0d3x1Ngqo6YIx8wUEjpZb1
         GmyCG3AGG4rm1eYS1XAw29lGToOgvF6k3f9CXN44Gx9RoIjkwK9oOJRGyyGpnmfRTmKY
         t1pzf9zOUE9oR/znQNMAhbeq9sxkUdWtwa0/AcBG8hZjop1AQeDOqV/YfQSEE+ek1GM9
         H9sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=d1NV8iFC;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id x4si812805wrv.3.2019.09.10.03.38.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 03:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id r134so13001526lff.12
        for <clang-built-linux@googlegroups.com>; Tue, 10 Sep 2019 03:38:40 -0700 (PDT)
X-Received: by 2002:ac2:5090:: with SMTP id f16mr20575559lfm.66.1568111920122;
        Tue, 10 Sep 2019 03:38:40 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id g5sm4005563lfh.2.2019.09.10.03.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2019 03:38:39 -0700 (PDT)
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
Subject: [PATCH bpf-next 02/11] samples: bpf: makefile: fix cookie_uid_helper_example obj build
Date: Tue, 10 Sep 2019 13:38:21 +0300
Message-Id: <20190910103830.20794-3-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=d1NV8iFC;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

per_socket_stats_example-opjs is used to list additional dependencies
for user space binary from hostprogs-y list. Kbuild system creates
rules for objects listed this way anyway and no need to worry about
this. Despite on it, the samples bpf uses logic that hostporgs-y are
build for userspace with includes needed for this, but "always"
target, if it's not in hostprog-y list, uses CLANG-bpf rule and is
intended to create bpf obj but not arch obj and uses only kernel
includes for that. So correct it, as it breaks cross-compiling at
least.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index f50ca852c2a8..43dee90dffa4 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910103830.20794-3-ivan.khoronzhuk%40linaro.org.
