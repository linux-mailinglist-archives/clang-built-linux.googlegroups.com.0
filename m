Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBOEZ77WAKGQENSQCJLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id C5563D35D3
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:40 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id r22sf1376891ljg.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753720; cv=pass;
        d=google.com; s=arc-20160816;
        b=NcCYJ6ymMC1qQR2+u9mnQ6F4kkyQTZrSC8B/mTN0w2WHM10xyMHDJH32XvRsjT60ZL
         MdggDfWd4ynyBf7cQ12+LKRbn3DnhXNP3c1biGfGMQYPpXsGYtkcLatdTKzDRXSacCeI
         pUO5myw+UFe+WFfTgd8xxzr8R7M7G6TTK7RUnXMWyQBQUn8t+FwRthLLOL9vyh90giBb
         R6TEggUBBlIiDu8uHTG14BHHcyohGENtwRxu6BmtqyeVQ0Tu/pzx/HQc+mPoJL8Wez8X
         5JHkd8kUY1l5o2rCFWfZE6IkMt5H1GThVx7xysyU6Tq/Lhvv+JC3T+Nhcryp3aHszueL
         +PuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=n+8VN2WvBuERBJuh6HeBY7m6F1FCT+So7Gmu5gt3WVo=;
        b=o9E9tH812MqqhNbXKf7CLX/NA5yfkl/5eGI3+I1K+SSj2ob4EmEr4ET2bQ0LuPXq14
         yvv5wiDOQp0JwtE6R/btMyMn/LvtN7xSo32I7kF3n9jDGYPnSUqJMxtAU+vIt+IGk4VD
         5LTXUsT2BJe9kETuPow62tJ8upHFtlQEqWxaCdUBmntDXOp2wkJfaRr1b8t3noBWJaWf
         F0bjiIkSOMcKh9+74/d4jhHPVop4j45mCetTLiUYuC6iTqxxYyzzy+yJg2cHWQeVk51j
         wQqi4s9GyuycXHph3xSicDdDCWXUE3O1qpjpIUHR4kL7a7DZYm9AXNsk1aI2ON4atXKX
         dt5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YEWRAAeP;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n+8VN2WvBuERBJuh6HeBY7m6F1FCT+So7Gmu5gt3WVo=;
        b=PyUlQUGp7UZ89uGnPEkaxshH5dchukbIezksTxNDLhg3v/QcNmieC/QvmE5ypIhonS
         e6/jdEU34Hv1q71L3YQiTwWvmAYdcsKzUgYU9POhTsZOdgxvn8BZ6g+hcRIabZUBCNV4
         E1HFcB8Pnp3MoFLKVIjsiobLYDR19KQfkotvytsHaUok+XUXOjg96x7FY01n798RNhar
         pW0OKZlpKSB140HUn+pugaND+wOY95Rc1xNcDp83QuQTt38HAv08N1kZt7MOv80gRoTE
         AoLYiR364gSP/5u4afccrq/2/MkHSFlehOd5adLz1iqrLUH00TePGTQWsqcAbb+JfdpX
         P6lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=n+8VN2WvBuERBJuh6HeBY7m6F1FCT+So7Gmu5gt3WVo=;
        b=MSwddEldF0xHGmyRH7mewgaSsrOmNvwZiBrOfXRwBHVoAs31+Uws9dN61Xv2knv5N8
         RbgyR0ix/zoBrludXtyFEPoeE2RY/6tgSWnS9LbXfcoKbjvItpzss4A9rIxdLNwDazD0
         2iFW0tYVoTN/5c2GARLlsqQT+LPo0o6TVO8MHMg3rg9q4LW7blJE0s2W3hIbzNLB5Nfh
         sWsI+MYSw6w6sf4jPGciZy/PtymU8Vv28L7P+lkergfPbc0IRMUXgWBl25DW6lrZUPjp
         eGwNuTQuzHb2UcamM6lJh2X70o9d92OZgsQK9QOH8sBLoQ6czMeWuTGcwm3+Gzyffkrz
         tVdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXQGXUfHFZ6RrS3EAXejbV8vns0jNhRApeO2Hm5eko7iXRXBVS5
	ZpfZ3FvXquX8nJiZYq56QmU=
X-Google-Smtp-Source: APXvYqyW9FSmuO7pr7LVaCQ7p71EXbVzVoW0PJHzSi7GVsLJSjL4WDRhgrZHTYIeB1TqOEDcle300A==
X-Received: by 2002:a05:651c:8b:: with SMTP id 11mr7825034ljq.100.1570753720402;
        Thu, 10 Oct 2019 17:28:40 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:5d57:: with SMTP id p23ls543499lfj.4.gmail; Thu, 10 Oct
 2019 17:28:39 -0700 (PDT)
X-Received: by 2002:ac2:43a8:: with SMTP id t8mr7415805lfl.134.1570753719955;
        Thu, 10 Oct 2019 17:28:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753719; cv=none;
        d=google.com; s=arc-20160816;
        b=ac+KsCoYneMsv7dYZRTm60rswxf4E1J1o4WDqlAUm1Xo11nfIVrABy5E0diRxCnDqy
         MRgUZqfS14dYB8W2E35M37hWG9GDPNEimwhIdI4SV59ZnCcVNmzCJKan9HLQS5aOp2u1
         OD5c8578zc9Y0+eF3MthgyoclpLMrPAjlj/CuLgAfXdo4G6g8KnNguAvcPLwICyGYWgx
         L25zOp3rNP3yfD7/14LJk5HJT6KyHWbAe1CqLeh2Jj5ibFEqR/fGa6lNdW5+u1cE/1vz
         HZGLKzVVqfu8kMC7CmTn7Ldal6dMyNAsqqiWLlK2XxAUIyRH4+bYQpP+zizfj3qJLst8
         TjpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ZSbYJ+tLtfDuMSVqb7LwJbRD3u314/MfD3p1keHf2Mw=;
        b=kzBRkhwTO18FdmBd5X34DdhKmglfJ/F6Mowxd66Fu2olJSR5xNvndwSAuVtXTfb0zc
         tUy6vA0GccqitJSQ1efA49L5GD0NiK9AwMgmgz0+rX3Bj2zWFfLi9x3QlqDFzQAK4fse
         VkSW2faeiAyjUNNsdpf9Zqzq1KKyK0WjMv2cxNL2kesAsTwGQm+uCLLOkCBksxpv9Oua
         3mcxvRojEyEPKAjmoiCVXpLl2WGtGHZNLPC5OShVdKbv2y5Rx2qvhrvozdRy32/fNSxH
         9ryLt3oBhl9H+KI6G44Y+TaR/rnDlovjpbzExg8izu14q1AKB0OfK7W5rDtj1NqnpptJ
         qGjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=YEWRAAeP;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id z4si111897lfe.4.2019.10.10.17.28.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id t8so5685259lfc.13
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:39 -0700 (PDT)
X-Received: by 2002:ac2:5468:: with SMTP id e8mr7357520lfn.12.1570753719752;
        Thu, 10 Oct 2019 17:28:39 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:39 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 14/15] samples/bpf: add sysroot support
Date: Fri, 11 Oct 2019 03:28:07 +0300
Message-Id: <20191011002808.28206-15-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=YEWRAAeP;       spf=pass
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

Basically it only enables that was added by previous couple fixes.
Sysroot contains correct libs installed and its headers. Useful when
working with NFC or virtual machine.

Usage example:

clean (on demand)
    make ARCH=arm -C samples/bpf clean
    make ARCH=arm -C tools clean
    make ARCH=arm clean

configure and install headers:

    make ARCH=arm defconfig
    make ARCH=arm headers_install

build samples/bpf:
    make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- samples/bpf/ \
    SYSROOT="path/to/sysroot"

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 6b161326ac67..4df11ddb9c75 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -187,6 +187,11 @@ TPROGS_CFLAGS += -I$(srctree)/tools/lib/
 TPROGS_CFLAGS += -I$(srctree)/tools/include
 TPROGS_CFLAGS += -I$(srctree)/tools/perf
 
+ifdef SYSROOT
+TPROGS_CFLAGS += --sysroot=$(SYSROOT)
+TPROGS_LDFLAGS := -L$(SYSROOT)/usr/lib
+endif
+
 TPROGCFLAGS_bpf_load.o += -Wno-unused-variable
 
 TPROGS_LDLIBS			+= $(LIBBPF) -lelf
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-15-ivan.khoronzhuk%40linaro.org.
