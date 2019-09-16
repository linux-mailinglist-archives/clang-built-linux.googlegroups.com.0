Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB76T7XVQKGQET5HFPBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DDAB38B5
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:54:55 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id g21sf1801921lfb.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 03:54:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568631295; cv=pass;
        d=google.com; s=arc-20160816;
        b=BzkHVkF+1r2YAz5j9g1vxDvM/EfU+aJePbHa+u/s6XyTd9D2gPXbqK1ntNrobQ36tP
         v+yUGxAvTrNQ8KmQtnVYOL6B5FJzZayzf22hNbCOOqni3mfQvaXgFrwf41ViUalMeEIJ
         Y4Z/E77D4rsVihlJ0VmubkQFbvLDBHezGlQ+GYgxJ3u8bMUVXJtaNsvimE2FJ60LxM+R
         iqPrEZnYurVagG6grxZ5n7Z0Y4YYW/xpt44U6YGCp6MLDyPQn21tKEMKOw4c68EWU+rg
         0vQYCkSBFs0K0Fi8a3sn1mJ5CY4t9MGKcMgDBA2FNPmOddL1ubN8xJE8E0IpDdSQIWFM
         U6QQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=yM0m4kW9cjaWCemTa9RsxZdmshckfSkyNQySSNXrHWw=;
        b=nH0T1B6kc5/Qp+VTvkUcfD4FY7iZzUHjxgGx3/cdSLTlZSlb2ck36j/J7X4VSvba9A
         iGXJzo+olwTc8ljCkYHOPFfiU3iIygTSHwHmkXXKrfkroOSb0hWtOfTUJIvJ5gscbTZh
         9iqKBQ+NhcTJNDgzVjRY0T2fYUdRRYFKeoSd75/m6jb12Tz+sIOW6kdAYm+wiqBcbYyK
         9GUfe4kNo71WMWtgLvxJR9IUobJp3ls4xgYhKtCNu7gP8cfHaiak018aUVQAobVBkqB5
         /jNXySyXZnNFhzIbywU3Zx326zIpslbwJ2bzer9+kZeAZVW3tQs/BDFyio2+hN6J1cUN
         FNLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E9WHFu0T;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yM0m4kW9cjaWCemTa9RsxZdmshckfSkyNQySSNXrHWw=;
        b=Z4IHdPI9IuxXJoC80TbhUJZHl7+BPujRaZk2rZ9iv+ByRIvMH/854l5vagP3odGyJm
         d7gIC+Hm8i9tuW9iJDCHRnZ3gsny8MEWI1hn0aJj4goHxcIkIB/j2//D3lUVRZDrkkVj
         ZZfjXwPkP8ixU0p3otqzJpd6kXjyo8kojUt6uRcFMBGUHRSqPhYflay7N/S+DU6zN0Kd
         yKgR6XX7D4m9Zm0kciF+pv4ZXBCs6deDlUqZCl+xAPESAd+2vjFvv9HWHl0ep2Szy8PV
         HDrRaHsYM1oGngT158f5GyUg9c328oICLuPbfnqQfuK5klga44fBYZJnTUNMHEottG1q
         aEkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yM0m4kW9cjaWCemTa9RsxZdmshckfSkyNQySSNXrHWw=;
        b=gMpts0MQSqJGGzpq5W4A1oWMXYW5Ij6fyAjSKgn4UBJZcveWqYMwxurbMpUUNNfGp4
         h19YjXv2ZNynGEdYvQc6/2k1gKtb0I9YWnbWy0bhNnb6uXegBOdL3rPV6DPo39+HEg4B
         d8LRTIZo2Qm3xG/CLTjWGXkdT3jbNUwVcn+DZJNLmCD/Q/Kpmn0es8U3g7RX8kW8lIFN
         pYuQDNWo4pejagxHoR6O4sgomIliqxlO0xAIeAzEuAjHScU96Fe0G/bEy8uxuMJMK3HQ
         o1PJlBuE1qJpM0m237c5/n2km+Wfw53WmpKzLsK+7pf2k18Y2S8N8EJMhMgyQUWTyU77
         FC/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6c6nbF85wTRhH16v4cTazaPl3XRrWAedo9DcTW/eayH5EzvSl
	fc+wfAQDz1vDd1jMCkCLpao=
X-Google-Smtp-Source: APXvYqz/J4f9fORH1+3rXpavsGkX1qn4iD3Cn/HvM72J4pSpNUFoBvAG/VPk7j10qL4Y6kL8PkwRJQ==
X-Received: by 2002:a05:6512:512:: with SMTP id o18mr12048387lfb.153.1568631295317;
        Mon, 16 Sep 2019 03:54:55 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f246:: with SMTP id d6ls2931816lfk.9.gmail; Mon, 16 Sep
 2019 03:54:54 -0700 (PDT)
X-Received: by 2002:a05:6512:25b:: with SMTP id b27mr10996196lfo.60.1568631294895;
        Mon, 16 Sep 2019 03:54:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568631294; cv=none;
        d=google.com; s=arc-20160816;
        b=tgMwN+OHdKqH5p+oB+2X6Y2D7aLoCXKswhxsBcZB8cAvefrXhUunRd1FVks5W41B51
         /aTCoNfvfrUUBljteatbR5VOtOp3wnS8BwL5I34RW6kLNu8334uMfnXgbCSNeGwFhohD
         OhKWVu3WN/uf0aVv+76l0nVyh06o7pKFG9G0YeANnaFR4WjSIf8Mgz+vyo5jFbgKFbD2
         lNryL6EBxdIDjHLOE090vu0mpPjDkqpEroptijLc2YdDrc/ANYlo2XDygcmS9B7CahRV
         RQCAmS7xXZJOB70u4Yig4oNp7ZagVlCjWhojrUGo5hIEp7TRHomdGVIKGUK8jSX0EthF
         MQbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=MLJcNNJZkagwGK0zIyaqmigCmuc2QO9sJ0CkQCG94a8=;
        b=09zRihpKrkx4ToueKYupm93UQXzSxIc9DozxyqNyVaHrqgrdR6897WZP6adVwPOvk2
         tLu1IALpbYBKXsUIu3oizK4dyGiQxQhi9mI+/P9SoSaFeoGpQxRzEtpoW30L8AjR7HXS
         ufI6Tk1eJAgXJOYrGP4HCUvJb3JDWQVizSaTVWM1+GDeUT3QXhZASmCxiVBFdfvr2j+j
         vkf46S/MHi14S06dXMFX0mzNxvG1tTbFLqvvZILX7yKH5PNvGPtEUlSpNw7h3W8vLc+e
         qz1PsBNzqc+okrBAqWxWR6Rp/NiLe3CquoCf+21qeDnjZaE/g8jmCCWteICAOSCmrgpG
         sXaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=E9WHFu0T;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id h6si2075063lfc.3.2019.09.16.03.54.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 03:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id h2so26756284ljk.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 03:54:54 -0700 (PDT)
X-Received: by 2002:a2e:9f17:: with SMTP id u23mr2122827ljk.241.1568631294682;
        Mon, 16 Sep 2019 03:54:54 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id v1sm8987737lfq.89.2019.09.16.03.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 03:54:54 -0700 (PDT)
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
Subject: [PATCH v3 bpf-next 11/14] libbpf: makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf targets
Date: Mon, 16 Sep 2019 13:54:30 +0300
Message-Id: <20190916105433.11404-12-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
References: <20190916105433.11404-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=E9WHFu0T;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

In case of LDFLAGS and EXTRA_CC/CXX flags there is no way to pass them
correctly to build command, for instance when --sysroot is used or
external libraries are used, like -lelf, wich can be absent in
toolchain. This can be used for samples/bpf cross-compiling allowing
to get elf lib from sysroot.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 tools/lib/bpf/Makefile | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
index c6f94cffe06e..bccfa556ef4e 100644
--- a/tools/lib/bpf/Makefile
+++ b/tools/lib/bpf/Makefile
@@ -94,6 +94,10 @@ else
   CFLAGS := -g -Wall
 endif
 
+ifdef EXTRA_CXXFLAGS
+  CXXFLAGS := $(EXTRA_CXXFLAGS)
+endif
+
 ifeq ($(feature-libelf-mmap), 1)
   override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
 endif
@@ -176,8 +180,9 @@ $(BPF_IN): force elfdep bpfdep
 $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
 
 $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
-	$(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
-				    -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
+	$(QUIET_LINK)$(CC) $(LDFLAGS) \
+		--shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
+		-Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
 	@ln -sf $(@F) $(OUTPUT)libbpf.so
 	@ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
 
@@ -185,7 +190,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
 	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
 
 $(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
-	$(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
+	$(QUIET_LINK)$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
 
 $(OUTPUT)libbpf.pc:
 	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916105433.11404-12-ivan.khoronzhuk%40linaro.org.
