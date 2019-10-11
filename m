Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBKEZ77WAKGQE36MLOGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id F19DED35C4
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:24 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id z205sf3327627wmb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753704; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rzkqhjb5plCW09b0UfeiqiMax5pv5tnzb2vab8sZnWSlrdDyEHfrAuRyXe239nATyM
         l5mAxyAa3RwOzf2eP4biNjMS1EhW2UwFdPf36oONkGYW9Od+xUds1U7iJ5Q6ajQ4JoG5
         XciQzrXRFFwCNe3G35XhQr4z5fOXU+3OiwB3oaa07aaOZhJhEehnjju2I4dWCEhe2iO8
         pPcQ3fZxEkVwf7rdDlz8YAQGpWZf39oH3emixxMoWmr4JMu/wiiunn31g+hdztR+Zdvv
         hZOzxmWYZFVxLGZcy6iLmzNvxbabT2gPZMIXao1Mrt/ewbBOVGhi1pCIlfRuqbntTfao
         uUiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=NypoJkBErYkwBMX9O4sw5WRvZsLaKp3I99wZaBfazJs=;
        b=ReHdx1XD5jIiZoUSVI9cqCDje/XSbksl3zqiiDmYODq7aHMUA8H9tSSmeIEGJ24MVb
         t4fFT4XESB89WvqGdiLNt7lPEQSrPHlHb/Ja4Gw1MIRETm4yjRxPYkM1sLhpjpvRFDN6
         5KVjhTjZ6OreLrKMSnGJtdofHUOyvPGP4gnUmd6oX4ukImS63o6mAaPe46I7nMxdvmbn
         mA8EhmREqd8hXUxap9Xq1pBHqrQUF3u0m3FJagpw/9O2O9eGcKWHf5bzJgFVUELNX2Cq
         g/iQtFdureMUl7wQwf6ES4eV46Nad1TXlVWxUR7CXAI4lFvBetJdMKvBnZHExq6Pv8wu
         Ht3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="deZb/gvn";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NypoJkBErYkwBMX9O4sw5WRvZsLaKp3I99wZaBfazJs=;
        b=LcagjpoGqNvDlkj4xNdbECWVJ9il3OYfh4xKvouSIquA+4kbgxvbyiQl9kJkGxLRa5
         D7SR6dq1Rbi5EK8o865LRcdhVDk0nCbiKKLfggo8wJN/Q8ZW2f04CHjUn7ATTIPiZyBk
         25wHX0ahNNYU8IEHc0iA2bmzw11a3dn6P+Fi6g9nNlMqauzMpQ8v2qTdaI3SXWMQVdil
         jyhKCxc/tzPw6WI8IGMf455nMPjNTuvpmPb1kDwdlCjzIyh7iwJTopdwinffkTSEDJO5
         m3p2Ym790/XgrIlpqcY04a5lQLbDAmfWr1P3u3Pj/1OabGE5xnd+CTPYBcPY2aDSvQeT
         bfPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NypoJkBErYkwBMX9O4sw5WRvZsLaKp3I99wZaBfazJs=;
        b=JAgptKFjtBhcpUfxR/GdTiL0wgY/JOXRnx6pCPDXKGz+npTal8tFnou8cb/Xh4/tP3
         BtyZvrgNm8BKLm4od/HmDOyQNsDZkxcKXLyf2IvNWjZoQDvEHE1T7zYxGL6dXUFwXHS9
         io0p7BvgzcsWCXqCbH6ldxV5p+dW2PKrSPT/sQWW19EV8ULuCOFO2RL+AegxQ3u3HyOM
         sH/Fm3EKBcnYpfCLRVKXgmf4mMjevXWuYUL/J1ikKm+L47sX0Sbuh1dYRyWJafFcJyW/
         ALm4Mczhl2B0B4m7J9o3rnLqTP+EY58Z8KVH14myAFKnrOeVD7wzaPyPQYWVL+ZImSji
         jC5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWk9SX2xXVaOxs05k6soD4ydBpEhris4du6p6pDktoznfNrLTJd
	gYFGO6c+DuYm26iWDr3shu0=
X-Google-Smtp-Source: APXvYqxj0dMjVD9SJF/ow7iloOky/6TDB7oUhPbHLGOT6QFlMAjSq9USj6fWPQeKSDp6V8kRf2C0aw==
X-Received: by 2002:adf:e401:: with SMTP id g1mr8948802wrm.211.1570753704657;
        Thu, 10 Oct 2019 17:28:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:b7cd:: with SMTP id t13ls1988912wre.5.gmail; Thu, 10 Oct
 2019 17:28:24 -0700 (PDT)
X-Received: by 2002:adf:fd04:: with SMTP id e4mr11024751wrr.371.1570753704239;
        Thu, 10 Oct 2019 17:28:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753704; cv=none;
        d=google.com; s=arc-20160816;
        b=VlIZKTZEAv306YzwniXKRqbj0p9KISRrF1Luc2SwMF5/gIo/pZyXursizSr1X0ZZQn
         U/w5VdskFeEb4vXivFfgkqYbgjwlFQy4iCr/QTV5q7n0Y9ku54MSrhiI8JOUOOIFphOd
         bofER9T9vi7I0bK2OHRTW13iycOWEP1CmZa2b4I14yaNjt/jbH/T4JFSWIzjW3p5PLUe
         IHtEgoXZyfTXBmSYs8yw4M3s0tk+HUxK/P6NbRudff1xLviHOxrM9L1N6j/BCoMVhgzQ
         4dyvHWnMkh9yZ83iEcXpcSXdHfdWx5+522OzN+kUHBGqYoOmX21rC1heb0uSDirKVxOa
         Wifw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=y12OqUDXt0uUd8S/w/N9B4j5fJB9b6dEGe48WxLpJQ0=;
        b=Y0vKSamYk0kRFEXZmLynKi8DCKLFKMTAHoGZx8rkdpYyJMe7aHyytg6sTbWT55/w05
         KAUxMYCFzGpsFTZq4rqnoAo/wCvRYYXnAuHl2q3PKd+U3WmY7giZiMaU9j0zUmn6Mhas
         BdWnD2yvMzOG6RarhRGxgLADBnnDgmGUaPgvXgxUrtbwhGrCElwFEOWZnLTwtelLXkA8
         GPWq2Kxmby/7YprrnQp8f7kc1jBJ+tlxZyXshcSIPPq66ZWKbyHl8uC3w8AOzDSxleWx
         qFvnucbPhhtLd8bCZTeIHgMBFrgkb/ckiHgW7vtSJsw8b3DdK+HL6fUrmrSft6kyuRzG
         We7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="deZb/gvn";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id f11si368056wrp.3.2019.10.10.17.28.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id y3so8029511ljj.6
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:24 -0700 (PDT)
X-Received: by 2002:a2e:82cd:: with SMTP id n13mr7735053ljh.116.1570753703648;
        Thu, 10 Oct 2019 17:28:23 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:23 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 02/15] samples/bpf: fix cookie_uid_helper_example obj build
Date: Fri, 11 Oct 2019 03:27:55 +0300
Message-Id: <20191011002808.28206-3-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="deZb/gvn";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-3-ivan.khoronzhuk%40linaro.org.
