Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBMMZ77WAKGQELPLCQ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 454A1D35CE
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:34 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id 190sf3331729wme.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753714; cv=pass;
        d=google.com; s=arc-20160816;
        b=m7Z6ICNvBeySS6JG0vN7KhizSYqIKxdhfCgQ0f5sp0tKBqSOOOMQLhyDBODu3nNes5
         IWx3WsEyro+9b+on4qRCbIqwnslKmGhjI7kelGRaK5aLpcCOBSLkfEDny9Po6Rfv6M2K
         IFdj2a4gy94cqCJVe6RTmMHzdYawrQitprK9ckAV1HYIytiJeIr/OvhmMqkYj2pVPGed
         sSFzCF3j4Dfmhj4unxn9fCJ1dpzF1uhkbUoqPhZYumn7u9qi2xyybuQdpzzint123vtq
         dGwvZHCwfo2ojAAw2p8COsWt3nx/YnP3QNEM0AL5ECDjcCOWc0DWjttBOzizT8SZkzvd
         3AyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=1h0sZDtuPlnOsvWx9PFtJL+VnQ6mot8cinWMkomX66k=;
        b=lcyYgOhx9rztuLlaJbIv3W44xpIxgt7A5c76dbWu+045d0aF0ZfcUX9Ki8ps5Aaqrs
         XNYrB/wJARssW+evUutXFQ27lXbWYrvSodg9q445xVFSnzBuEznN04tNrNTV6xj8Bp+M
         6Cn8B2NGBpSH5RqFtW2AuB38LDEb7sPF1CliNEtHzGPJBmGOyOawnQLsVLgbCagEvHP9
         OKWnyub5IiSASMlqU5qWD3zRhcu7dN5COJdHIF6YoFBES/efdsfeh6Ka14EMteaqUMzH
         v2GZ1zh6cSSlKXEALXJcDcYS2IEJ4Ttr67T4P1DenkeVsktHaOvIrvHw9YnzOQWGCKh2
         FtlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lgPdUOsd;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1h0sZDtuPlnOsvWx9PFtJL+VnQ6mot8cinWMkomX66k=;
        b=rmRVqnLoMzzM/A6MUcaq/QRhdZpwB5Rv042gqyHA//kQYsrD+AEAt9/HdIf1B6QdUm
         6crWs5mjv2i+6LeMYi+GJ15HugBlIoc+Lm+GWaPj5QataktEeYfVINj/ZFcykn7Vs1EA
         PAavEDk9lAFw4Jm/ExPekcpzWijwnizJJAZ2tUxGudUtR8F6BQl3AylLiRzAOQiLcyrF
         elrf6blALqTMhlBj+RDza7z+CHseHUqgoFL1xQGpj4tkWaXM6IMFTm+aDYjGi+oUas/3
         17sO3+LafoVtSP7wann6Utge3/2dEHKaPO+V4T3fahn15bpvDeWz3n0SzBts/RaO1Q+v
         YswQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1h0sZDtuPlnOsvWx9PFtJL+VnQ6mot8cinWMkomX66k=;
        b=pfw5o4Yuvma+HWSIC52C4HrJHNPUw5p2IquJzSMLxibJPjTxl6le8gAwkjom7fdpIA
         fEOnFF6vgS0+J3WyEiOIBQc0fJJug3cIoamwBUIsG4VlYbnf5j7p0pb7Fyllq+M+dk1N
         17cs9MeQWAzKdOCpjBFS8AWjUDGpk0LyIU0OZyl6ujcXv9oIIA5+/zMn3QqDQVNPXzz1
         Ftr5tlFIjzakmsAMfepgy0TPDkK2lhlQjjvojCdK7PAInGdfR3fn6/rbBUxISoNZoJ11
         FsDex5FPTQ+V5BZmgyWvHep2m+DWQtpRxCzdedYsGAMjH19SwMiWpYexJMoPkGelq4SI
         9lsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUE5ju8bKR5X5o95MsBS/Sax5q8wTMGNr6tF++VFXsOFoyEvB0L
	b7Qf4Y/2ba4ghvDGEQHlGQ4=
X-Google-Smtp-Source: APXvYqw2a4DggLadfZwjU2NGin/6As98rsgh3tNMsdNKfpVgxL6I7lmtuOhwS2yt86aMCGbSdj7Z+w==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr834676wml.120.1570753713997;
        Thu, 10 Oct 2019 17:28:33 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:ce16:: with SMTP id m22ls2135295wmc.5.canary-gmail; Thu,
 10 Oct 2019 17:28:33 -0700 (PDT)
X-Received: by 2002:a1c:a444:: with SMTP id n65mr855155wme.111.1570753713573;
        Thu, 10 Oct 2019 17:28:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753713; cv=none;
        d=google.com; s=arc-20160816;
        b=HDWmMXtzHF5Jh2OzveIlENBV83NmmdyCvPbtmlPs6W797XkeBic9kVvCy5sslU2HP7
         aETgyRYn1lLFBvXlVkzqZSUEoi2QMpYvKYW08oQCAnTdO7Wr4HOM9ZkjW4vxvVpg6oyJ
         Sw5hAaUNCFvZGZZjfxSggacf+z9i9phDTxnPwOO5T0hFmDb5ByNhdaiF0IQiNFuqWlxC
         EdTOW0E6va1GcviPQbQi5/6ZjSEVpFRfRJR57OtVhmZYpoqjWIpBeTKbjbXzMdCNMgOk
         6TIGdcFbUDHyGqTLzWPIsoKJUpTo3KkgpEGqQLs2igRmOKysf6hLoyV/WvicYMHysJZa
         kDXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=03GhUEVVPKzA4TMKrHg2hN3Csg5CX1o2irsu+gSocso=;
        b=zYD8Q7vGtE28/yPwUz6KLG7HQzDiJwsR8YKpzFPtB2IwyZfAfLuq7Nxt1clGXNXQ3t
         4G6g9iD9keQ1s2bf0Fr+3KDzRwEk9toX1Nd8ytISwfPhBHDPtwegf2wnmVZpUaoshFTB
         c+xLDj7BhsNFzlck7JC+TJnGmtyx1WDMNvoJ5D6zOsAP8R/Um44kR+WUJWdi3FoONVhh
         Zyq+AYbu+Wjxe6VXqGiDbumLHXGNkr9AOrraxTWGf+9ttawhQV//HzM6FwGuGiwJjZbB
         5IN3qj1/l0F1n0QwOf0Vw6fIuaHp9qmxAleJlc4/3FxEqzfS7dztQQ9EdgJJljKFA1O3
         m+cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=lgPdUOsd;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id q137si690633wme.3.2019.10.10.17.28.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id 72so5725655lfh.6
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:33 -0700 (PDT)
X-Received: by 2002:ac2:43d9:: with SMTP id u25mr7678515lfl.142.1570753713044;
        Thu, 10 Oct 2019 17:28:33 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:32 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 09/15] samples/bpf: use own flags but not HOSTCFLAGS
Date: Fri, 11 Oct 2019 03:28:02 +0300
Message-Id: <20191011002808.28206-10-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=lgPdUOsd;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

While compiling natively, the host's cflags and ldflags are equal to
ones used from HOSTCFLAGS and HOSTLDFLAGS. When cross compiling it
should have own, used for target arch. While verification, for arm,
arm64 and x86_64 the following flags were used always:

-Wall -O2
-fomit-frame-pointer
-Wmissing-prototypes
-Wstrict-prototypes

So, add them as they were verified and used before adding
Makefile.target and lets omit "-fomit-frame-pointer" as were proposed
while review, as no sense in such optimization for samples.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 91bfb421c278..57a15ff938a6 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -176,8 +176,10 @@ BPF_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
 TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
 endif
 
-TPROGS_LDLIBS := $(KBUILD_HOSTLDLIBS)
-TPROGS_CFLAGS += $(KBUILD_HOSTCFLAGS) $(HOST_EXTRACFLAGS)
+TPROGS_CFLAGS += -Wall -O2
+TPROGS_CFLAGS += -Wmissing-prototypes
+TPROGS_CFLAGS += -Wstrict-prototypes
+
 TPROGS_CFLAGS += -I$(objtree)/usr/include
 TPROGS_CFLAGS += -I$(srctree)/tools/lib/bpf/
 TPROGS_CFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-10-ivan.khoronzhuk%40linaro.org.
