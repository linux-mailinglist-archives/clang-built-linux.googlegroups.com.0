Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB46T7XVQKGQEHQ7N62A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 22900B38A8
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:44 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id y66sf22207465ede.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631283; cv=pass;
        d=google.com; s=arc-20160816;
        b=KoW+fRDdx50Vgru9RJEnJveF2Dj1VNsu8Gr68LkyyZ7GlDiiULbl5WqChk5llyobRP
         HJrG5Qbe+1zF07IItkQ3N4uwAouaOaboMgzuLlT611sxFpZGaoXayD2cWuzETufuaBnW
         BlZtv79bgYq5qYYoQJAMhfS+zN6SOylA1nJvTQ+Mi15HbDuA79ACXEoToFNvc4TsQlxe
         6/5Pa0va8I364a9eqVIRJEkukU0FkhHzbfR/MSt0TgNEGlMniJoWIgfS2UsHe3IaMGgj
         D+qV85Ll9DBGnoOWOui9s80ADhrkt5sFkbAiIHmmu0k49WucpGUX334bESljZK+hZLlX
         wmDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=GYrTmR0pMKZFku6oWhNCZ/lc7hoaGV/+OLwmV2Njtlg=;
        b=PPebQ7Zkgthlv+RjBH/AF18VZIf/C7fHWwfly6MTSF81Pls/8W55U191YMGXtn/dmg
         sbp9EIRraQj6w7H3VTyhnrWQhEuEa1vilANnyhoiIkhXbAr+7op4RxWkZSZO/moHAX+a
         9NJ/ntIBhJG/gmoDKR5sPftlXrSE3DqG9gox8fhZWAf3Ec+gzFcm5YBOnY7U9li24RRM
         LvYv9OXX5Ppn9M5f1DSIrhbeMeJYDvhIy7Pb5jKzkDerSkkiTzVEIl4CiOCEzyGwYoTE
         swhNAE3l09EU4kBoj0z4lOPRtGVgQDAwknoXbdwslzvljJADaiEoBMbCJKdVuoh47W7r
         gTkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zqzL4Jzw;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYrTmR0pMKZFku6oWhNCZ/lc7hoaGV/+OLwmV2Njtlg=;
        b=i3m3sfSO7V0BIMqv+/mV+bsMmzdDSOp+lVYHwRnsMYnsp7GMo9/8Td0ZsK4rFUl09G
         B7r6RTPeclnsAYhTePkAyIjvrLiDgWyME9gLcxVpLbrAbn1a1vM4s/YfiNiTcxhgNIG+
         G3BVIybO65KQGKLj4DqQt3w8ljUy1hRujRze+1viYPFoOntoao2rWo4WlzxM3vocBqgW
         117xFcCTMdwvNvGlYy4yOIt4NjY46hLj0+Zkngwz1DU36Kq31DKRLEqT7lU4BvpgJCD3
         CrpYzujQfTF0IxUXEb9wWAlLtj8UPrt1lTYUyj8/7L8bjsigJNcbcHpNeLkIMX/n2XJj
         LO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYrTmR0pMKZFku6oWhNCZ/lc7hoaGV/+OLwmV2Njtlg=;
        b=Blj5s3wKGNjoDeSJ/b8D73OcMPBQI0OI0s7fdrnSXV0P7vRD3S4VgAhJ306+c74SXD
         xZKatewYzil0dO8ecWbOL7iBrcmg4n194BF49ZNiuu5KnRbsm27YIZ2b51WH/5wDZNSG
         lrLs4HCUzyDBI4nW5vs+uQtS09ksFN3ziNRKSzlnsS5kSh2mwuazEnAV9ZrutdRs3oK8
         P9+tlnDGd5R1rWc9qpLu5WYMHYK+yi67UWaHzV6Kc5MzBUx/I7zVq71QaAQJG5jB9WjH
         RpHT9ObEgaOBW5WP24Jh4QqQDIkwvXdxUOZn2a/+fOBdKTn7tvM4qfegO80QfYvDQmf2
         ucSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJ8qMMLi8Ldhtc89oSCBPx7FT0oEdUxk65JN94IDuL3IcL8r9/
	YPhPcOkuvvjTKhPAlh/tb0c=
X-Google-Smtp-Source: APXvYqxXHpBnjLo/du+VgLhCqVb49iARifLoq+VR+we5U4zlsDv5LEZh8EPn2FI8SkKeYu/rnoaPqQ==
X-Received: by 2002:a17:906:1941:: with SMTP id b1mr19070590eje.141.1568631283855;
        Mon, 16 Sep 2019 03:54:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c351:: with SMTP id j17ls776717edr.0.gmail; Mon, 16 Sep
 2019 03:54:43 -0700 (PDT)
X-Received: by 2002:a50:ab49:: with SMTP id t9mr57306925edc.301.1568631283492;
        Mon, 16 Sep 2019 03:54:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631283; cv=none;
        d=google.com; s=arc-20160816;
        b=wuuj1SQNscmVeWLah1xDFYaNpS26EGdq6Xh9Fa3K4nJ5JaVLaxoyJj8vZXD69vB99+
         tWtOK6zYDGU0gZ6SPD9BG/VNc/R9jgk5pV0u8YLv1eeQkAFsrRvZUaku5bWfd7dSNHXw
         AI8AMEsc+BzDji8wb+xMK+LN3WnA3r6spBNjp3kTmH5V0io8ynTl67ZEm94zBSOsxDXL
         ieWYep1tfLa1qK+FCtLlpmpobD0v/zvxQZMjkLhlOSHHK1+ql9L+pWz1COJLYNTYE7M1
         U1h6gB8F3nrFzXq5ntbbMUIk1ZmgYDtJ7SuDOtLScymg2Kai7hMNZNR/Q4P9nCmqKkSl
         lpXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=myQi7tUoXKWvWu2Otr2cMzZrUikwx9p5w927Z5U7K18=;
        b=T5n9BVSpd1AnUMvgnGkU6kw4XUwuT9+/0X5oGNsV4tq3lLhD2PwgvXBH3gELkP+9su
         bpN9ucrc8oEGbO+VE+OT2miS0NUBjp4gISCcwHDiFsUo7jCzLcRDMYoBv8pXXf1pswIL
         QxuK3I6LC+fz8FkkIFMbWEUgau1Jf/gaM6CAU3Hdp9nc90EIcavqDrIjAG6XwcKIfnoW
         Gb4K1/kBIT1YaVY/SDtk4IcnLqgu0tbhHPFhyOWV4d3wgUTxFyaOv7pfqC6j18a696Bz
         lf4n7I7XZOagvEmCiuHehBkXbHQmAWNmjGQ6T15djgjoRah4QKWvo7m9WpEfy168m7ks
         /o7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=zqzL4Jzw;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id d14si2297643edb.4.2019.09.16.03.54.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id q64so22747120ljb.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:43 -0700 (PDT)
X-Received: by 2002:a2e:b0c2:: with SMTP id g2mr1900577ljl.217.1568631282996;
        Mon, 16 Sep 2019 03:54:42 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:42 -0700 (PDT)
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
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v3 bpf-next 02/14] samples: bpf: makefile: fix cookie_uid_helper_example obj build
Date: Mon, 16 Sep 2019 13:54:21 +0300
Message-Id: <20190916105433.11404-3-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=zqzL4Jzw;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-3-ivan.khoronzhuk%40linaro.org.
