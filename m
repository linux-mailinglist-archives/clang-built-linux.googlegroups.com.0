Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBZHFUHVQKGQE5O7KDKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FD2A2BAF
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:44 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id f18sf2202698wro.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126244; cv=pass;
        d=google.com; s=arc-20160816;
        b=VanWHsXtO220l4TSjXjiEcucjVxZbtcp6jDDut0T+h5XWxLTh8rMQqj/fetHX0xeGx
         AjNSB9lZItqu5uuAOzHOzVCD0CbYnubpdR2yidEPGya8vl9icZDmrLHkKECnpMbx9iIP
         VC4S0ou9Wgh122AjOIVtUvE9G7dR0b3bQsY7zylDbbFBOPXDCzUq+Qjg0UngWnIFy+cs
         8t38OopghgPZ3NTzTWy/cinzSEykFbb+HBuibdBDRPOkj+IrbCJvdXMpGSK1mS2YRiLu
         TWoSsgaDeRP+hZ8v8kGN4oWA0nYkTlEl5f8sxtKfQ4olBtJxdUoZOugBf1ApaG0rWTVU
         jRnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=KiQS8AWwRSrMXpD6CRNU4Ce8o752rucHKUXU80SJPOA=;
        b=RwKhnG4cphf97q++Vlu7JYE2G74ltCTrTrvmqi50GlcD0HR17reh6j6dGoea7TaXos
         WIqrtL0fzJQ3CbXFTpGeBuNHXz+DGsD8OFM9T6hhkj7Skq9RFzAAW+JFCnj5hXCMNdpt
         KUC+M2vg9qOlKqEiMDOl0EI2hrfKu2Kdb6gboJG25a9hU0h8/829fA7NrLQUHHhTYikW
         8q67YqcxOK+GccCsKxC2HulnkjxqCjNvG3nk30N5qUbfABniQ3DfSJ17F90H5sCsa68j
         yNUbYw4qXfxEzXPHllVlWpfGP2+LW1zL8vBtDzFVu85eiFlszHBvjUAD0q0ikScisPqO
         u1KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kCLWWa8C;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KiQS8AWwRSrMXpD6CRNU4Ce8o752rucHKUXU80SJPOA=;
        b=PyBz6ga9y/+5eA30Osgkg01vRQ1ogIRfxXTVjbFW2aj4jjw/mrAZQuL45vMQ7q4Ap5
         Cg4I68F2Qkwv3JDlzagNNGSHEtzlGFWQc90YHQ5rr/k8CXLlPaFl595SmI2kHRSVnH+Y
         rqgrTNe/b92HBk5HuvJj49d2ogfBdljN37+yJ0/iTbZ6uW5GAvEDQo/57XHYZXnkyV/0
         n6QTDQewbFJgRUSXrdb/PIKuPBDiVbz+rGJgQrVBe0f8GWFpbJy1HOI2yTKAv/MrYLFQ
         t2D+fJchkqaYAO75uIPfEl/NnAygG+UajVBaVVOa+HidcmDsD4kJtFJSZpmXauMv27aN
         JSIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KiQS8AWwRSrMXpD6CRNU4Ce8o752rucHKUXU80SJPOA=;
        b=ikNUunWXaWx14C3oy8E/acyejCzeh1+bSov2HADI/gc8caLPiBCJ5nX1kg12Z9eVdS
         g/yMzZVZFaykqLwDdEyApOZHBhFHFJVy+03Ea9Zf3TgPyM9FqIlhuo0Y1ybW/bddOdmr
         VXFdT1dYBl1RRSaOUUdV9gF7mwOA/68ecwdMoRE17/QHpyQCIMrcUbmPpe5avACwfl6M
         E2jBIdtOjEJdohLvY81VbTqnzsWHjVD80ouGpQItQ+YM9TpuD0oz3Z4Ijue6E5ldy6fu
         l9F0/lJ5s82ktsfJBqo17FBXVPoMmf+j0wm8EGbGzKAlCdMpHKqXlNgUWz5XGu65y6Eu
         wWbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6Dy3I0BCpULQ+m3/nNdNYrgSJ1Kgck8SmsfMXMVdoHTKnwjSG
	emiZcq4RZkE+mn2cYDQ5rG8=
X-Google-Smtp-Source: APXvYqyEespCrp5+BiHSF3c4PadQA1IrLVGdQq+TPAjZo4/b9kAF8W+x1iwEPpsVniORPXf6CS19Cg==
X-Received: by 2002:adf:9043:: with SMTP id h61mr14636280wrh.247.1567126244079;
        Thu, 29 Aug 2019 17:50:44 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fd91:: with SMTP id d17ls1270284wrr.9.gmail; Thu, 29 Aug
 2019 17:50:43 -0700 (PDT)
X-Received: by 2002:adf:ecc7:: with SMTP id s7mr15463144wro.215.1567126243703;
        Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126243; cv=none;
        d=google.com; s=arc-20160816;
        b=fBbolMz42k0372FNoblarHKFOXZfOSpxa+yoZnRGyzg1htlkFgHZGvwD+fgCdPsorR
         UL0aiTzZYWT8G1wW2YaJkKEMjY8lAstTfAVCiZM1hTKv5BM94bQ7sLDFv+DH0LgDHVdc
         VRy/OLUQclvr6l+dZ4NCA2lZN4R9txUD9BLHdJHJvr+PDwmFHf+ZC7Tui/8/+d/cDsAN
         bt91x7cje1VlF48bSS8tdrBnIFpU75UOuaqurbQXTiaMba8daYMAtPcVtatBzrh58Ou4
         QWrnKmGTuG8+Q3HSUVvWZA72TTIiPiq24Ed1JLfhl9TOtioDE9xGsFbHVvXSYQWZ3HS3
         Ym4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Uyna4IYOJol121SLmRwAZvx/NaOoPDVjYK6GTYbGUpc=;
        b=ey5dlmQ07iNC/fb5uwIsQITeLswHmSszBN81c2XuE90Lrr0ZtrK9AC+uwj73yIneti
         jgtNSvCgJruinML9ir6qkXT/PWS2zJycj2P63bcFQiusJCQWTjLUmawIenDczFoQ5YD6
         obAUdXI0i5fG7kmQdJtu6PeexRhyKwf6iRcoC7pF4PyV51r7SlEgd3ju1nDvwPXasv6z
         ZwDHdWEOMjvhQm2GoiAoJNTfjf0VmFPQiQWZoER85eVFkCblgEepS+F2PYUXsRw9ZgG9
         LSZCKa2q+QJSxxGs+GniU0EHRhe0eER9nly/D3GJGiuPWVOqpBYCJbvDug7tgrE5c+wT
         w0rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=kCLWWa8C;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id b15si380484wmg.1.2019.08.29.17.50.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id t14so4834185lji.4
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
X-Received: by 2002:a2e:8455:: with SMTP id u21mr6903469ljh.20.1567126243059;
        Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:42 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 01/10] samples: bpf: Makefile: use --target from cross-compile
Date: Fri, 30 Aug 2019 03:50:28 +0300
Message-Id: <20190830005037.24004-2-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=kCLWWa8C;       spf=pass
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

For cross compiling the target triple can be inherited from
cross-compile prefix as it's done in CLANG_FLAGS from kernel makefile.
So copy-paste this decision from kernel Makefile.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 1d9be26b4edd..61b7394b811e 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -196,6 +196,8 @@ BTF_PAHOLE ?= pahole
 # Detect that we're cross compiling and use the cross compiler
 ifdef CROSS_COMPILE
 HOSTCC = $(CROSS_COMPILE)gcc
+CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
+else
 CLANG_ARCH_ARGS = -target $(ARCH)
 endif
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-2-ivan.khoronzhuk%40linaro.org.
